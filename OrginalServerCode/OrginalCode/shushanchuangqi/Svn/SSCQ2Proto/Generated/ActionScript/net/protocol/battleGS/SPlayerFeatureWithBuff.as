/************************************************************************
//  工具自动生成的Flash客户端协议代码(结构体类型)
//  File Name:    SPlayerFeatureWithBuff.as
//  Purpose:      战斗通信协议
//  Copyright (c) 2010-2020 上海恺英网络科技有限公司, All rights reserved.
*************************************************************************/

package net.protocol.battleGS
{
	import flash.utils.ByteArray;
	import net.util.*;

	/**
	 * 带Buff的玩家信息
	 */
	public final class SPlayerFeatureWithBuff extends SFeatureBase
	{
		public var strName:String; //玩家姓名
		public var eJob:uint; //(枚举类型：protoCommon.ECareerType)职业
		public var eSex:uint; //(枚举类型：protoCommon.ESexType)性别
		public var vEquip:Vector.<SEquipShowInfo>; //装备
		public var vecTitle:Vector.<STitleAppear>; //头衔
		public var strGuildName:String; //帮派名称
		public var byQuality:uint; //(无符号8位整数)品质
		public var byDujieLevel:uint; //(无符号8位整数)散仙渡劫等级
		public var byVIPLevel:uint; //(无符号8位整数)VIP等级
		public var vecBuffInfo:Vector.<SBattleBuffInfo>; //战斗外的Buff信息

		/**
		 * 获取继承类的类型
		 */
		public override function getClassType():uint
		{
			return EType_SFeatureBase.eType_SPlayerFeatureWithBuff;
		}

		/**
		 * 转换为XML
		 * @param name_ 此类型作为成员变量时的变量名
		 */
		public override function toXML(name_:String = null):XML
		{
			var topXml:XML
			if(name_ != null && name_ != "")
				topXml = <SPlayerFeatureWithBuff _name_={name_} strName={strName} eJob={eJob} eSex={eSex}
				 strGuildName={strGuildName} byQuality={byQuality} byDujieLevel={byDujieLevel} byVIPLevel={byVIPLevel}/>;
			else
				topXml = <SPlayerFeatureWithBuff strName={strName} eJob={eJob} eSex={eSex}
				 strGuildName={strGuildName} byQuality={byQuality} byDujieLevel={byDujieLevel} byVIPLevel={byVIPLevel}/>;
			if(vEquip != null)
			{
				var vEquipXml:XML = <Vec_SEquipShowInfo _name_="vEquip"/>;
				for each(var s1:SEquipShowInfo in vEquip)
					vEquipXml.appendChild(s1.toXML());
				topXml.appendChild(vEquipXml);
			}
			if(vecTitle != null)
			{
				var vecTitleXml:XML = <Vec_STitleAppear _name_="vecTitle"/>;
				for each(var s2:STitleAppear in vecTitle)
					vecTitleXml.appendChild(s2.toXML());
				topXml.appendChild(vecTitleXml);
			}
			if(vecBuffInfo != null)
			{
				var vecBuffInfoXml:XML = <Vec_SBattleBuffInfo _name_="vecBuffInfo"/>;
				for each(var s3:SBattleBuffInfo in vecBuffInfo)
					vecBuffInfoXml.appendChild(s3.toXML());
				topXml.appendChild(vecBuffInfoXml);
			}
			topXml.appendChild(super.toXML(name_));
			return topXml;
		}

		/**
		 * 拷贝到另一个对象
		 * @param obj_ 另一个对象
		 */
		public override function copyTo(obj_:*):void
		{
			super.copyTo(obj_);
			obj_.strName = strName;
			obj_.eJob = eJob;
			obj_.eSex = eSex;
			obj_.vEquip = vEquip;
			obj_.vecTitle = vecTitle;
			obj_.strGuildName = strGuildName;
			obj_.byQuality = byQuality;
			obj_.byDujieLevel = byDujieLevel;
			obj_.byVIPLevel = byVIPLevel;
			obj_.vecBuffInfo = vecBuffInfo;
		}

		/////////////////////以下为序列化函数/////////////////////

		public static function fromByteArray(bytes:ByteArray):SPlayerFeatureWithBuff
		{
			var s_:SPlayerFeatureWithBuff = new SPlayerFeatureWithBuff();
			var base_:SFeatureBase = SFeatureBase.fromByteArray(bytes);
			base_.copyTo(s_);
			var strName:String = BytesUtil.readString(bytes);
			s_.strName = strName;
			var eJob:uint = bytes.readUnsignedByte();
			s_.eJob = eJob;
			var eSex:uint = bytes.readUnsignedByte();
			s_.eSex = eSex;
			var vEquip:Vector.<SEquipShowInfo> = SEquipShowInfo.vectorFromByteArray(bytes);
			s_.vEquip = vEquip;
			var vecTitle:Vector.<STitleAppear> = STitleAppear.vectorFromByteArray(bytes);
			s_.vecTitle = vecTitle;
			var strGuildName:String = BytesUtil.readString(bytes);
			s_.strGuildName = strGuildName;
			var byQuality:uint = bytes.readUnsignedByte();
			s_.byQuality = byQuality;
			var byDujieLevel:uint = bytes.readUnsignedByte();
			s_.byDujieLevel = byDujieLevel;
			var byVIPLevel:uint = bytes.readUnsignedByte();
			s_.byVIPLevel = byVIPLevel;
			var vecBuffInfo:Vector.<SBattleBuffInfo> = SBattleBuffInfo.vectorFromByteArray(bytes);
			s_.vecBuffInfo = vecBuffInfo;
			return s_;
		}

		public static function vectorFromByteArray(bytes:ByteArray):Vector.<SPlayerFeatureWithBuff>
		{
			var length:uint = BytesUtil.readVectorLength(bytes);
			var vec:Vector.<SPlayerFeatureWithBuff> = new Vector.<SPlayerFeatureWithBuff>();
			for(var i:uint = 0; i < length; ++i)
			{
				var s:SPlayerFeatureWithBuff = SPlayerFeatureWithBuff.fromByteArray(bytes);
				vec.push(s);
			}
			return vec;
		}

		public override function toByteArray(bytes:ByteArray):void
		{
			super.toByteArray(bytes);
			BytesUtil.writeString(bytes, strName);
			bytes.writeByte(eJob);
			bytes.writeByte(eSex);
			SEquipShowInfo.vectorToByteArray(vEquip, bytes);
			STitleAppear.vectorToByteArray(vecTitle, bytes);
			BytesUtil.writeString(bytes, strGuildName);
			bytes.writeByte(byQuality);
			bytes.writeByte(byDujieLevel);
			bytes.writeByte(byVIPLevel);
			SBattleBuffInfo.vectorToByteArray(vecBuffInfo, bytes);
		}

		public static function vectorToByteArray(vec:Vector.<SPlayerFeatureWithBuff>, bytes:ByteArray):void
		{
			BytesUtil.writeVectorLength(bytes, vec.length);
			for each(var s:SPlayerFeatureWithBuff in vec)
				s.toByteArray(bytes);
		}
	}
}
