if (keyboard_check_pressed(ord("1"))) {

    global.inventory[? "parsnipSd"] = 99999;
    global.inventory[? "tomSd"] = 99999;     
    global.inventory[? "cornSd"] = 99999;
	global.inventory[? "epSd"] = 99999;
	global.inventory[? "pkSd"] = 99999;
}

if (keyboard_check_pressed(ord("2"))) {

    global.inventory[? "harvestedParsnip"] = 99999;
    global.inventory[? "harvestedTom"] = 99999; 
    global.inventory[? "harvestedCorn"] = 99999;
	global.inventory[? "harvestedPK"] = 99999;
	global.inventory[? "harvestedEP"] = 99999;
}

if room = Lawn and !audio_is_playing(snd_outsidenoise)
{
audio_play_sound(snd_outsidenoise,2,false)

}

if room != Lawn and audio_is_playing(snd_outsidenoise)
{
audio_stop_sound(snd_outsidenoise)
}

if room = Title_Screen and !audio_is_playing(snd_menumusic)
{
audio_play_sound(snd_menumusic,2,false)

}

if room != Title_Screen and audio_is_playing(snd_menumusic)
{
audio_stop_sound(snd_menumusic)
}

if room = Garden and !audio_is_playing(snd_gardenmusic)
{
audio_play_sound(snd_gardenmusic,2,false)

}

if room != Garden and audio_is_playing(snd_gardenmusic)
{
audio_stop_sound(snd_gardenmusic)
}

if room = Shop and !audio_is_playing(snd_gardenmusic)
{
audio_play_sound(snd_gardenmusic,2,false)

}

if room != Shop and audio_is_playing(snd_gardenmusic)
{
audio_stop_sound(snd_gardenmusic)
}



















