import webview from '@ohos.web.webview';

@Component
export struct PageWebView1 {
  @State message: string = 'Hello World';
  // @Prop url: string;
  @Link @Watch("urlChange") url2: string;
  controller: webview.WebviewController = new webview.WebviewController();

  urlChange() {
    // this.message = url2

  }

  build() {
    Row() {
      Column() {
        Web({ src: this.url2, controller: this.controller })
          .javaScriptAccess(true)
          .height('100%')
          .width('100%')
      }
      .width('100%')
    }
    .height('100%')
  }
}