# Sandbox Ocean 2.0

## Authors

- Sanghun Heo  https://github.com/SanghunHeo
- Wansup Choi  https://github.com/toonation/

## Description

This proposal is to make **expanded and upgraded version of Sandbox Ocean**.


### What's Sandbox Ocean 2011?

[Sandbox Ocean 2011](http://vimeo.com/34409128) is our _very early version of this project in 2011_. “Sandbox Ocean” is a multi-user interactive installation. Users collaborate in creating a dynamic and animated world by changing and shaping the topography of a sandbox. The interface is simple, intuitive and playful. With customizing Microsoft’s Kinect system, our project provides a new-media dimension to the playful sandbox of our childhood. “Sandbox Ocean” is an environment for collaborative & creative play. The malleable sand interface fosters an activity that emphasizes mutual and collaborative play rather than competition. The physical interaction is intended to bring digital media back from the mediated world of the computer screen into the realm of tangible experience.

![Image of sandbox ocean](project_images/early version/3.jpg?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/early version/4.jpg?raw=true "Image of sandbox ocean")

### Major updates of Sandbox Ocean 2.0

#### New Concept: DEEP SEA mode

Furthermore we decided to add new mode; **“DEEP SEA"** which is able to dive into deep sea from sea surface via natural interaction. DEEP SEA mode will give user new experience with that providing new deep sea creatures and environment such as viper fish, giant octopus and so on. Mainly this concept will **represents various creatures and environment in deep sea** such as vivid fluorescent color tone world.

![Image of sandbox ocean](project_images/post/common/deep-sea.jpg?raw=true "Image of sandbox ocean")

##### Storyboard

![Image of sandbox ocean](project_images/post/common/deepsee_sketch_1.png?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/post/common/deepsee_sketch_2.png?raw=true "Image of sandbox ocean")

##### New creatures

![Image of sandbox ocean](project_images/post/common/footballinkfishes.jpg?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/post/common/additional_unit1.jpg?raw=true "Image of sandbox ocean")

#### Expanding user experience to online

Supporting online is to expand experience of sandbox ocean to world on web browser through chrome web apps. Because of it will be running on the chrome web browser, anybody who has kinect device and willing to experience, it would make it real. We also consider that even though people that don't have appropriate device; kinect, they can experience sandbox ocean using mouse and keyboard.

#### Fully ported to pure HTML5 client & Packaged with Chrome Apps

To support online, we tried to test its technologies for representing deep sea. With several tests, we have decided to provide HTML5 version. There're 2 options that users can play "Sandbox Ocean 2.0". The first is that connect to sandbox ocean web site and play it on the web browser. The other is that to install "Sandbox Ocean 2.0 Chrome app" on your Chrome browser.

Previous version was made with flash actionscript and running on flash player. But now every code is running on web browser. Because I believe webbrowser is the one of the most excellent platforms for media art. So I rewrite every actionscript 3 code to html5 markup, javascript and css3, and wrapped up as chrome app. User can install this app on their own desktop using internet. Now user could make their own sandbox ocean if they want. We make install guide page and user can use it. If user don't have kinect and sand box, then still they can make sandbox ocean with mouse. We will update.


## Link to Prototype

* [**Prototype is included in this project. Click here!**](https://github.com/SanghunHeo/devart-template/tree/master/project_code)

### How to execute

1. install sandbox ocean chrome app.
2. read description and watch the demo video.
3. click try button then experience sandbox ocean on the browser
4. If user is ready make own sandbox ocean

### What is that prototype can show

* Basic working as HTML5 application
* Running on Chrome app
* Node.js interface for connecting Kinect device

### What is used for implementation

#### Client

* coffeescript
	* Using for neat and clean coding
* html5 - canvas
	* easel.js
		* Using converted flash animation asset for easl.js
* WebGL & GLSL
	* Use webgl shader for fast pixel modification
* socket.io
	* To connect socket with local server for receiving depth data

#### Server

* node.js
* libfreenect
* node png
* kinect-depth
* node static

## Links to External Libraries

* [libfreenect](https://github.com/OpenKinect/libfreenect "libfreenect github")
* [node-kinect-depth](https://github.com/cwdoh/node-kinect-depth)
* [node.js](http://nodejs.org)
* [jquery](http://jquery.com)
* [socket.io](http://socket.io)
* [glsl example](http://greggman.github.io/webgl-fundamentals/webgl/webgl-2d-image-red2blue.html)
* [EaselJS](http://www.createjs.com/)
* [coffeescript](http://www.coffeescript.org/)
* [html5 boilerplate](http://html5boilerplate.com/)
 
 ## Image & Videos
 
[![ScreenShot](project_images/early version/video_screen_shot.png?raw=true)](http://vimeo.com/34409128)

![Image of sandbox ocean](project_images/early version/3.jpg?raw=true "Image of sandbox ocean")

![Image of sandbox ocean](project_images/early version/4.jpg?raw=true "Image of sandbox ocean")

![Image of sandbox ocean](project_images/early version/Sandbox Ocean_1080p 1231_02059.jpg?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/early version/Sandbox Ocean_1080p 1231_02761.png?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/early version/Sandbox Ocean_1080p 1231_03197.jpg?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/early version/Sandbox Ocean_1080p 1231_04145.jpg?raw=true "Image of sandbox ocean")
![Image of sandbox ocean](project_images/early version/6.jpg?raw=true "Image of sandbox ocean")
