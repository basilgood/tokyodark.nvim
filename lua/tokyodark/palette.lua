local color_gamma = require('tokyodark.utils').color_gamma
local gamma = require('tokyodark.config').gamma

local colors = {
    black = '#06080A',
    bg0 = '#11121D',
    bg1 = '#1A1B2A',
    bg2 = '#212234',
    bg3 = '#392B41',
    bg4 = '#4A5057',
    bg5 = '#282c34',
    bg_red = '#FE6D85',
    bg_green = '#98C379',
    bg_blue = '#9FBBF3',
    diff_red = '#381430',
    diff_green = '#2c3f1a',
    diff_blue = '#1f2d49',
    fg = '#A0A8CD',
    red = '#B54F94',
    orange = '#B58265',
    yellow = '#D7A65F',
    green = '#7C9E58',
    blue = '#7199EE',
    cyan = '#38A89D',
    purple = '#A485DD',
    grey = '#4A5057',
    none = 'NONE'
}
local function gamma_correction(colors)
    local colors_corrected = {}
    for k, v in pairs(colors) do colors_corrected[k] = color_gamma(v, gamma) end
    return colors_corrected
end

return gamma_correction(colors)
