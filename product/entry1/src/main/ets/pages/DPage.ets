import CommonConstants from '../common/constants/CommonConstants'
import router from '@ohos.router';
import { LoginPage } from '@ohos/geek_harmony_common_utils';
// 第三方库封装
const TAG = '[DPage]';

@Entry
@Component
struct DPage {
  @State message: string = CommonConstants.index2_title1;
  // @State src: string = (router.getParams() as Record<string, string>)[CommonConstants.index2_src1];

  build() {
    Row() {
      Column() {
        LoginPage()
      }
      .width('100%')
      .height('100%')
    }
    .height('100%')
    .backgroundColor($r('app.color.page_bg'))
  }
}