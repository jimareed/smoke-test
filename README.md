# smoke-test

Simple nightwatch.js test suite.  

## setup

```
docker run --name selenium -d -p 4444:4444 selenium/standalone-firefox
docker run -d -p 8080:8080 --link selenium:selenium jimareed/smoke-test
curl localhost:8080/smoke-test
```