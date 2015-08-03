module.exports = {
  "helloworld test" : function (browser) {
    browser
      .url("http://jimareed.com/docker-helloworld/")
      .waitForElementVisible('body', 1000)
      .assert.containsText('body', 'Hello World')
      .end();
  }
};