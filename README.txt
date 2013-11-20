http://openradar.appspot.com/radar?id=5695057915019264
http://openradar.appspot.com/14595036
rdar://problem/14595036

I'm setting NSApplicationPresentationDisableProcessSwitching to my NSApp's presentationOptions. The user can't switch (this is a Kiosk App). When the user goes into full screen in a video (with an HTML 5 <video> tag) however, he's able to switch.

Worst yet, when he's back from full screen, the app has "lost" it's presentationOption and he can switch.

Demo App @ http://github.com/stuffmc/rdar14595036