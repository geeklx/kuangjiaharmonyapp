import { Constants } from 'librarycommon1/src/main/ets/constants/Constants';
import router from '@ohos.router';
import { logger, ResUtils } from 'librarycommon1';

@Preview
@Component
export struct Zujian1 {
  @State message: string = 'Hello World';
  @State textColor: Color = Color.Black;

  build() {
    Scroll() {
      Column() {
        Row() {
          Column() {
            Text(ResUtils.get_string_1())
              .fontSize($r('app.float.small_font_size'))
              .fontColor('#000000')
              .margin(10)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                router.pushUrl({ url: "@bundle:com.example.harmonyapp1/libraryindex3/ets/pages/PageWebView2", params: {
                  data1: 'https://www.jd.com/'
                } })
                // logger.info('showData1:' + router.getParams()['data1']);
              })
            // Blank()
            Text(ResUtils.get_string_2())
              .fontSize($r('app.float.small_font_size'))
              .fontColor('#000000')
              .margin(10)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                router.pushUrl({ url: "@bundle:com.example.harmonyapp1/libraryindex3/ets/pages/PageMarquee1", params: {
                  data1: '上一页的数据'
                } })
                // logger.info('showData1:' + router.getParams()['data1']);
              })
            // Blank()
            Text(ResUtils.get_string_3())
              .fontSize($r('app.float.small_font_size'))
              .fontColor('#000000')
              .margin(10)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                router.pushUrl({
                  url: "@bundle:com.example.harmonyapp1/librarycommon1/ets/common/indexcomponents/pages/LoginPage",
                  params: {
                    data1: '上一页的数据'
                  }
                })
                // logger.info('showData1:' + router.getParams()['data1']);
              })
            // Blank()
            Text(ResUtils.get_string_4())
              .fontSize($r('app.float.small_font_size'))
              .fontColor('#000000')
              .margin(10)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                router.pushUrl({ url: "@bundle:com.example.harmonyapp1/libraryindex3/ets/pages/PageLottie1", params: {
                  data1: '上一页的数据'
                } })
                // logger.info('showData1:' + router.getParams()['data1']);
              })
            Text(ResUtils.get_string_5())
              .fontSize($r('app.float.small_font_size'))
              .fontColor('#000000')
              .margin(10)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                router.pushUrl({
                  url: "@bundle:com.example.harmonyapp1/librarycommon1/ets/common/largeImage/Index",
                  params: {
                    data1: '上一页的数据'
                  }
                })
                // logger.info('showData1:' + router.getParams()['data1']);
              })
            Text(ResUtils.get_string_6())
              .fontSize($r('app.float.small_font_size'))
              .fontColor('#000000')
              .backgroundImage(ResUtils.get_icon1())
              .margin(10)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                router.pushUrl({
                  url: "@bundle:com.example.harmonyapp1/librarycommon1/ets/common/player/PagePlayerIndex",
                  params: {
                    data1: '上一页的数据'
                  }
                })
                // logger.info('showData1:' + router.getParams()['data1']);
              })


          }.height('100%').width('50%').alignItems(HorizontalAlign.Start)

          Column() {


          }.height('100%').width('50%').alignItems(HorizontalAlign.Start)
        }.height('100%').width('100%').alignItems(VerticalAlign.Top)
      }
    }
  }

  aboutToAppear() {
    this.textColor = Color.Blue;
    logger.info('[LifeCyclePage]  LifeCyclePage aboutToAppear');
  }

  onPageShow() {
    logger.info('[LifeCyclePage]  LifeCyclePage onPageShow');
  }

  onPageHide() {
    logger.info('[LifeCyclePage]  LifeCyclePage onPageHide');
  }

  onBackPress() {
    this.textColor = Color.Red;
    logger.info('[LifeCyclePage]  LifeCyclePage onBackPress');
    return false;
  }

  aboutToDisappear() {
    logger.info('[LifeCyclePage]  LifeCyclePage aboutToDisappear');
  }
}