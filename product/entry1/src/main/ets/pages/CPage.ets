import CommonConstants from '../common/constants/CommonConstants'
import router from '@ohos.router';
// 第三方库封装
// import { MarqueeView } from '@ohos/base';
import { MarqueeView } from '@ohos/geek_harmony_common_utils';
const TAG = '[CPage]';
@Entry
@Component
struct CPage {
  @State message: string = CommonConstants.index2_title1;
  @State src: string = (router.getParams() as Record<string, string>)[CommonConstants.index2_src1];

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(CommonConstants.font_size3)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(CommonConstants.font_size2)
          .opacity(CommonConstants.PARAMS_OPACITY)
        Blank()
        Button($r('app.string.back'))
          .fontSize(CommonConstants.font_size1)
          .width(CommonConstants.layout_size3)
          .height(CommonConstants.layout_size1)
          .backgroundColor($r('app.color.button_bg'))
          .onClick(() => {
            router.back();
          })
        Blank()
        Blank()
        //字幕轮播
        MarqueeView()
      }
      .width('100%')
      .height('100%')
    }
    .height('100%')
    .backgroundColor($r('app.color.page_bg'))
  }
}