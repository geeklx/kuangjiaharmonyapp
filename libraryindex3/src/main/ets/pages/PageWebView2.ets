import webview from '@ohos.web.webview';
import router from '@ohos.router';

@Entry
@Component
export struct PageWebView2 {
  @State message: string = 'Hello World';
  // @Prop url: string;
  @State  url2: string='';
  controller: webview.WebviewController = new webview.WebviewController();

  aboutToAppear() {
    // const params = router.getParams() as DataModel;
    // this.article = params;
    // this.mediaInfo = this.article.media_info;

    // this.getHtmlData()
    //
    this.url2 = router.getParams()['data1']
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