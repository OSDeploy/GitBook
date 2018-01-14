# Video Drivers

As we noted in [What's Taking All The Space?](/drivers/whats-taking-all-the-space.md), we saw that Video Drivers consumed the most Drivers.  If we were to run a search for all instances of IntcDAud.inf, which is the HD Audio component of Intel Graphics, we have 34 instances \(for 27 Family Packs\)

```
Latitude 3x40 A01\Latitude3x40\win10\x64\chipset\7W9YT\Windows10-x64\IntcDAud.inf\6.16.00.3177
Latitude 3x40 A01\Latitude3x40\win10\x64\chipset\7W9YT\Windows10-x64\IntcDAud.inf\8.20.00.485
Latitude 3x40 A01\Latitude3x40\win10\x64\video\FGGYJ\Windows10-x64\IntcDAud.inf\6.16.00.3174
Latitude E5 A02\LatitudeE5\win10\x64\video\1C5FX\Windows10-x64\IntcDAud.inf\6.16.00.3196
Latitude E5 A02\LatitudeE5\win10\x64\video\1C5FX\Windows10-x64\IntcDAud.inf\8.20.00.922
Latitude E6 A10\LatitudeE6\win10\x64\video\7W9YT\Windows10-x64\IntcDAud.inf\6.16.00.3177
Latitude E6 A10\LatitudeE6\win10\x64\video\7W9YT\Windows10-x64\IntcDAud.inf\8.20.00.485
Latitude E6 A10\LatitudeE6\win10\x64\video\F1FMC\DisplayAudio
Latitude E6 XFR A04\LatitudeE6XFR\Win10\x64\video\1C5FX\IntcDAud.inf\6.16.00.3196
Latitude E6 XFR A04\LatitudeE6XFR\Win10\x64\video\1C5FX\IntcDAud.inf\8.20.00.922
Latitude E6 XFR A04\LatitudeE6XFR\Win10\x64\video\7W9YT\Windows10-x64\IntcDAud.inf\6.16.00.3177
Latitude E6 XFR A04\LatitudeE6XFR\Win10\x64\video\7W9YT\Windows10-x64\IntcDAud.inf\8.20.00.485
Latitude E6 XFR A04\LatitudeE6XFR\Win10\x64\video\V387Y\IntcDAud.inf\6.16.00.3178
Latitude E6 XFR A04\LatitudeE6XFR\Win10\x64\video\V387Y\IntcDAud.inf\8.20.00.500
Latitude E7 A12\LatitudeE7\WIN10\x64\Video\8F4CH\IntcDAud.inf\6.16.00.3189
Latitude E7 A12\LatitudeE7\WIN10\x64\Video\8F4CH\IntcDAud.inf\8.20.00.659
Latitude E7 A12\LatitudeE7\WIN10\x64\Video\YXJG1\IntcDAud.inf\6.16.00.3197
Latitude E7 A12\LatitudeE7\WIN10\x64\Video\YXJG1\IntcDAud.inf\8.20.00.950
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\8K9N3\Windows10-x64\IntcDAud.inf\10.22.01.97
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\8K9N3\Windows10-x64\IntcDAud.inf\6.16.00.3197
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\C2N7T\IntcDAud.inf\10.22.01.97
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\C2N7T\IntcDAud.inf\6.16.00.3197
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\MKHKR\IntcDAud.inf\6.16.00.3197
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\MKHKR\IntcDAud.inf\8.20.00.922
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\N8YN8\IntcDAud.inf\6.16.00.3196
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\N8YN8\IntcDAud.inf\8.20.00.922
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\YXJG1\IntcDAud.inf\6.16.00.3197
Latitude E8 A18\LatitudeE8\WIN10\x64\Video\YXJG1\IntcDAud.inf\8.20.00.950
Latitude E8 Rugged A09\LatitudeE8Rugged\WIN10\x64\Video\0RC06\IntcDAud.inf\6.16.00.3191
Latitude E8 Rugged A09\LatitudeE8Rugged\WIN10\x64\Video\0RC06\IntcDAud.inf\8.20.00.865
Latitude E8 Rugged A09\LatitudeE8Rugged\WIN10\x64\Video\C2N7T\Windows10-x64\IntcDAud.inf\10.22.01.97
Latitude E8 Rugged A09\LatitudeE8Rugged\WIN10\x64\Video\C2N7T\Windows10-x64\IntcDAud.inf\6.16.00.3197
Latitude E8 Rugged A09\LatitudeE8Rugged\WIN10\x64\Video\G7Y13\Windows10-x64\IntcDAud.inf\6.16.00.3197
Latitude E8 Rugged A09\LatitudeE8Rugged\WIN10\x64\Video\G7Y13\Windows10-x64\IntcDAud.inf\8.20.00.950
```

---

## PowerShell Remove-OSDriversDell

It is clear that we have more Drivers than we need, so we will use PowerShell Remove-OSDriversDell.  Check the RemoveVideo box and it will find and remove Directories with the following names \(and yes Dell did name two directories as a .inf . . . strange.

```
7W9YT
Graphics
Video
kit60887.inf
kit60888.inf
```

This will take a while as it is deleting all the files, so grab a quick snack and come back.  When it completes your Driver Repository should shrink considerably.![](/assets/2017-11-17_14-38-40.png)

---

Don't worry about the loss of the Video Drivers, we will add them back later.

