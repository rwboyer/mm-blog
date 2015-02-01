---
layout: post
title: Film Emulation For Capture One
comments: true
tags:
- film
- presets
- black and white
---

{% img /images/2015/02/contact-70.jpg %}

Okay, a few of you Aperture 3 abandon-er-ers have asked me via twitter, email, and a few blog comments when I might re-do my ultra-cheap but ultra-wonderful film emulation presets for Capture One and Lightroom. **News Flash**: A few of them have been live for about two days. 

Now don’t go get all excited if you wanted the Portra and Fuji Pro Neg color stuff. Ummm — didn’t do that yet. However if you’re into black and white these might just be up your alley. If you just cannot wait around for a bit of back story [get the Kodak Classics B+W here](http://store.rwboyer.com/page/503 "Film Presets For Capture One"). Go on but come back for the first in a series of walk-thru posts. Hell even if you don’t get the these might give you a few things to consider when post processing your stuff.

<!--more-->

### Why Capture One 8, Why Black and White?

A little back story on why Capture One 8 and why black and white. If you’ve followed along you may know I did a not so little project last year. I shot film and digital in a specific way. At the end of it all I wanted my digital and film to match up from a look perspective. Since I happen to own every film emulator in the universe as well as every RAW processor I give a hoot about I set off on a two or three week re-re-re-re-assesment of all the current versions looking specifically which tools would allow me to match up my film shot at the same time as my digital. Grain look is usually the bugga-boo for me when printing large as planned.

Long story short Alien Skin Exposure 7 won the day by a narrow margin. What shocked me is how close Capture One 8’s new grain engine could get. Not only that but it normalizes grain appearance across multiple input file sizes, just like Exposure 7. Very nice, otherwise the look is all over the map so why bother “presetting it”.

Since I was already done matching up my own film all I needed to do was make some modifications to make the lot of them more useful over a broader range of users, test the shit out of them on all sorts of lighting conditions, write a user guide and I would be done… So there we have it. I promise I’ll get around to the color stuff soon, I promise. Why not LR? Ummm, ummm, would prolly net me more money but I really don’t like the grain engine — even though I swear it’s better than it was. Maybe okay for low-res screen viewing, as in non-retina but not for big prints. I may still do them but I do stuff I actually use myself first.

### Walk Thru

Not a demo of all the presets, not a dissertation of all the things I could possibly do. Just a random image I shot on digital for that project. I happened to finish off a roll of TRI-X shot at 400 about 4 frames before this demo shot. This happens to be a reject so it’s perfect for demo stuff… TRI-X  400 emulation it is along with how difficult all my post processing is… 

{% img /images/2015/02/screen-65.jpg %}

Above we have our demo image as imported strait-up. Easy enough. Note no color correction, nothin’. More on the color thing in a minute.

{% img /images/2015/02/screen-66.jpg %}

Next we apply the *normal* variant of TRI-X in the [preset pack](http://store.rwboyer.com/page/503 "Capture One 8 presets"). Each film comes with a few variants — TRI-X the most due to the pushed versions. Honestly that could be it for me and this particular image. Truth is most images require tiny tweaks on the exposure control just like when you print. I typically apply the preset, take one image from a group of the same scene, tweak the exposure, paste that to the rest and I’m done. At least for the contact sheet versions.

Wait a second — what’s this tool tab, never saw that before. It happens to be what I use with a couple mods for what other people might need/want so you don’t have to go jumping all over the place to get a base set of stuff nailed down for a group of images. It’s roughly the same order that one should mess about with the work-flow on these presets. Don’t hesitate to jump up and down though. After messing around you may want to try a few differing variants of the preset again. Here’s the scoop on 92.9987% of what you are going to need from top to bottom:

- Obviously the preset selection
- Next up is the base characterisitcs block — many of you may not mess with this but the initial curve selection is crucial. Consider this variations in a real film development regimen. The two I use the most and have tweaked the presets for are film standard, and film extra-shadow. **Use these way before messing with the High Dynamic Range sliders.** Specifically try film extra-shadow.
- The exposure controls. This is the meat and potatoes of all of it. Exposure and maybe a tweak on the contrast before it hits the curve of the emulation.
- High Dynamic Rage. Hmmmm, hummmm. Use sparingly otherwise your stuff will not look like film at all. Also note that it’s way better to bring exposure down too much and add a touch of shadow slider than using the highlights slider.
- Everything from here on out is just a quick way to adjust to taste so that you can copy/paste to the rest of the images without hopscotching around all the tabs. First up grain, want more of a 120 medium format look rather than the 35mm look of the presets. Cut the granularity by 30-50%.
- Sharpening: every variant adds a bit more sharpening than the Capture One default which is already high… two reasons. Matching most of my development which creates Mackie lines on hard black/light edges. Two; Ummm lazy short cut avoid output specific sharpening for web sized crap. It’s here mostly because everyone will have differing needs based on output, intent, and taste.
- The histogram and the navigator are here just as convenience items I use all the time. Maybe you’ll like having them here as well.

I include a work-space with this tab already built with the presets. Also note, the presets do not mess about with the exposure controls, WB, or other stuff that you may want fixed across preset changes. 

Now what else should I do to this? Well if I was actually going to use it I would do exactly two things.

This:

{% img /images/2015/02/screen-67.jpg %}

A big giant sloppy soft dodge right where you see the red mask. One hit of +2/3 of a stop of exposure. Exactly the light sloppy drunken dodge I would do in a wet darkroom. Don’t go all super edge precise. I never ever use the auto mask thing — more problems than it’s worth. If you are/were one of those red-ruby mask cut with an Exacto knife kind people you’re probably not going to want a roll-film aesthetic anyway and prolly don’t want any grain either. Oh, and you’re prolly in Photoshop. For the rest of us big and sloppy usually looks better and certainly matches up most real darkroom dodge/burn looks.

What next… I don’t mint the shit in the background. It is exactly what it’s supposed to be for this project. What the hell. Depending on my mood I might just tone the white cords down a bit like this:

{% img /images/2015/02/screen-68.jpg %}

Another big sloppy brush stoked haphazardly across the cords. This time with a -1 stop.

For comparison purposes here’s the after sloppy dodge burn…

{% img /images/2015/02/screen-68.jpg %}

A lot of you may want to go a lot farther. Do whatever floats your boat but that hint of detail in the upper folds of the dress and especially the hand against the black are perfect in my book. Way better than leaning on the shadow slider to bring out **all the fabric detail** of a black dress in shadow. IMO that looks like dog shit and screams digi. 

I’m not too worried all the camera club critique-ers/internet dudes would go ape shit about me not holding the camera strait and the fact I have absolute blacks or I got a bit of motion in Heather’s face or I “forgot” to heal that birth mark on her cheek bone or I cut off the shoe at the bottom or I didn’t choose a suitable plain clean-room background or I didn’t smooth out the wrinkles in the white thing or there are exactly 17 pixels at 255 clipped in the “hot spots” on the metal reflecting the light source or blah blah blah… 

Oh yea, about that color thing I mentioned before. If you are actually matching film results don’t correct your digital color if shot side by side with film. In fact shoot your camera at daylight no matter what or when or set daylight. It will help you solve issues of B+W color response. It’s REALLY BAD if you shoot in open shade with BW film and no “correction” on camera and then try to match color corrected digital in terms of color response. Same goes for tungsten. NOBODY uses a friggin super dark blue-ish color correction filter when shooting real BW film in tungsten. NOBODY. 

So there you have it. Way more to come in terms of how I use this preset pack and specific choices I make vs what you could make… not that one is right. Stay tuned.

RB

