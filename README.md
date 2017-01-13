# docker-java8-xvfb-firefox
This dockerfile contains the steps to create an image with Java 8, firefox and a virtual display.

Do not forget to attach the screen with the following commands after you create the image:

```shell
Xvfb -ac :0 -screen 0 1280x1024x16 &
trap 'killall -9 Xvfb' EXIT
```

Note
-----------
if you are using CI you can automate attaching the screen by running shell file.
