# RadioConsole2-Docker

RadioConsole2-Docker is a Docker implimentation of W3AXL's RadioConsole2 daemon. 
At this time RC2-Docker supports uploading custom config files for each daemon instance... and that's about it.

Check out docker-compose.yml for an example of how to set up.
Notes
- Be sure that you have a seperate config folder and file for each radio.
- Edit internal port if desired, or alternatively just edit Docker exposed port.

If docker-compose isn't your style try running:
- docker run -p 8801:8801 -v ./config:/config w9cxr/rc2-daemon:latest

Tested working on an Intel server machine running Ubunutu LTS 24.04
