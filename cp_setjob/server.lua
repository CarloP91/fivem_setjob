ESX = nil

TriggerEvent('esx:getShVqSSeRvraredObjVqSSeRvrect', function(obj) ESX = obj end)

RegisterServerEvent("cp_volontariato:set")
AddEventHandler('cp_volontariato:set', function()

	local xPlayer = ESX.GetPlayerFromId(source) -- Gets the players data
	
	xPlayer.setJob('ems', 0)

	if xPlayer.job.name == 'ems' and xPlayer.job.grade > 0 then
	TriggerClientEvent('esx:showNotification', source, "Sei già un medico!")
	elseif xPlayer.job.name == 'ems' and xPlayer.job.grade == 0 then
		xPlayer.setJob('unemployed', 0)
		TriggerClientEvent('esx:showNotification', source, "Ora sei disoccupato!")
	else
		xPlayer.setJob('ems', 0)
		TriggerClientEvent('esx:showNotification', source, "Sei un volontario!")
	end

end)