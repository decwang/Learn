function DoCaseForDgn1068(wDgnType)
    LOG_WRN('DoCaseForDgn1068' .. tostring(wDgnType) )
    local user = GameScript:GetUser()
    if(wDgnType ~= 8) then
        return 
    end
    local pPlayer = SharedToPtr(user:GetPlayer())
    if (nil == pPlayer) then
        LOG_WRN('NO Player')
        return 
    end
    local pDgn = SharedToPtr(pPlayer:GetDgn())
    if (pDgn == nil) then
        LOG_WRN('NO Dgn')
        return
    end
    pDgn:CreateMonsterIfNotExist(29,10,24)
end
