import CommonConstants from '../common/constants/CommonConstants'
import router from '@ohos.router';
import { LoginPage } from '@ohos/geek_harmony_common_utils';
import window from '@ohos.window';
import { FloatView1 } from './FloatView1';
import common from '@ohos.app.ability.common';

// 第三方库封装
const TAG = '[EPage]';


interface Position {
  x: number,
  y: number
}

@Entry
@Component
struct EPage {
  // @State message: string = CommonConstants.index2_title1;
  // @State src: string = (router.getParams() as Record<string, string>)[CommonConstants.index2_src1];
  @State context: Context = getContext(this) as common.UIAbilityContext;

  build() {
    Column() {
      Column() {
        Column() {
          FloatView1({
            positionX: 0,
            positionY: 100,
            ballSize: 60
          })
        }
        .width('58%')
        .height('45%')
        .position({ x: 0, y: 100 })
        .zIndex(1)
      }.width('100%').height('100%')
    }
    .height('100%')
  }
}