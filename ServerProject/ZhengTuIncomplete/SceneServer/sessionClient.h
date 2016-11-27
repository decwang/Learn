#ifndef SESSION_CLIENT_H
#define SESSION_CLIENT_H

#include "base/baseTcpClientBuffer.h"
#include "base/baseAnalysisCmd.h"
#include "base/baseSubService.h"

class SessionClient : public TcpClientBufferQueue 
{
	public:
		friend class SubNetService;
		SessionClient(const std::string &name,const std::string &ip,const WORD port,const QWORD serverid);
		virtual ~SessionClient()
		{
		}
		bool connectToSessionServer();
		void run();
		bool msgParseStart(const Cmd::NullCmd *nullCmd,const DWORD cmdLen);
		bool broadCmdToScene(const void *cmd,const DWORD cmdLen);
		virtual bool msgParseForward(const Cmd::NullCmd *nullCmd,const DWORD cmdLen);
		bool msgParse(const Cmd::NullCmd *nullCmd,const DWORD cmdLen);
		void analysisSendingCmd(const BYTE cmd,const BYTE param,const DWORD cmdLen);
		void analysisRecvingCmd(const BYTE cmd,const BYTE param,const DWORD cmdLen);
		void switchCmdAnalysis(const bool switchOn);
	private:
		AnalysisCmd m_analysisSend;
		AnalysisCmd m_analysisRecv;
};

extern SessionClient *sessionClient;

#endif
