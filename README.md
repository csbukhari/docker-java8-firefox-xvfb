# docker-java8-xvfb-firefox
This dockerfile contains the steps to create an image with Java 8, firefox and a virtual display.

Do not forget to attach the screen with the following commands:

```shell
Xvfb -ac :0 -screen 0 1280x1024x16 &
trap 'killall -9 Xvfb' EXIT
```
