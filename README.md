# smoke-test

Under development.  Simple nightwatch.js test suite.  

## setup

```
docker run -d -p 4444:4444 selenium/standalone-firefox
npm install -g nightwatch
cd smoke-test/src
nightwatch --test
```
