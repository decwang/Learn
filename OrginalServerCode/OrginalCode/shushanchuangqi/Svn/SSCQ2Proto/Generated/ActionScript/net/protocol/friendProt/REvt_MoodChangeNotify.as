/************************************************************************
//  工具自动生成的Flash客户端协议代码(接收函数参数事件类型)
//  File Name:    REvt_MoodChangeNotify.as
//  Purpose:      协议:好友相关协议, 函数:签名改变通知
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.friendProt
{
	import flash.events.Event;
	import com.hurlant.math.BigInteger;

	/**
	 * 函数MoodChangeNotify[签名改变通知]的接收事件
	 */
	public final class REvt_MoodChangeNotify extends Event
	{
		public static const DATA_RECEIVE:String = "FriendProt_MoodChangeNotify";
		public static const DATA_ERROR:String = "FriendProt_MoodChangeNotify_Error";

		public var qwUserID:BigInteger; //(无符号64位整数)帐号ID
		public var wMood:uint; //(无符号16位整数)心情表情

		public function REvt_MoodChangeNotify(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		/**
		 * 转换为XML
		 */
		public function toXML():XML
		{
			var topXml:XML = <REvt_MoodChangeNotify qwUserID={qwUserID} wMood={wMood}/>;
			return topXml;
		}
	}
}