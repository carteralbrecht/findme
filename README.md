# findme

findme is a little command line tool I wrote to quickly get my Macbook's current latitude and longitude

![image info](./images/screenshot.png)

## Support

Works on macOS 10.14 and above

## Building

clone the repo and run `swift build --configuration release`

## Running

run `./build/release/findme`

(The first time you must accept location permissions)

You will receive your location as

`<lat> <lon>`