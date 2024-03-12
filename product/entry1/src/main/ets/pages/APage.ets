import CommonConstants from '../common/constants/CommonConstants'
import router from '@ohos.router';
import Logger from '../common/utils/Logger';

const TAG = '[APage]';

@Entry
@Component
struct APage {
  @State message: string = CommonConstants.index1_title;

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(CommonConstants.font_size3)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button($r('app.string.next'))
          .fontSize(CommonConstants.font_size1)
          .width(CommonConstants.layout_size3)
          .height(CommonConstants.layout_size1)
          .backgroundColor($r('app.color.button_bg'))
          .onClick(() => {
            router.pushUrl({
              url: CommonConstants.index2_url1,
              params: {
                src: CommonConstants.index1_message1
              }
            }).catch((error: Error) => {
              Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
            });
          })
      }
      .width(CommonConstants.text_full_wt1)
      .height(CommonConstants.layout_size2)
    }
    .height(CommonConstants.text_full_he1)
    .backgroundColor($r('app.color.page_bg'))
  }
}