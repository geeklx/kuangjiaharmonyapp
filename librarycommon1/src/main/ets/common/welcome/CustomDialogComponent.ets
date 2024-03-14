/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import router from '@ohos.router';
import Logger from './../../Logger';
import { GlobalContext } from '../../GlobalContext';

/**
 * Custom pop-up window.
 */

@CustomDialog
// @Component
export struct CustomDialogComponent {
  controller: CustomDialogController = new CustomDialogController({ 'builder': '' });
  cancel: Function = () => {
  };
  confirm: Function = () => {
  };

  build() {
    Column() {
      Text($r('app.string.dialog_text_title'))
        .width('90%')
        .fontColor($r('app.color.color182431'))
        .fontSize($r('app.float.size_fp_20'))
        .textAlign(TextAlign.Center)
        .fontWeight(600)
        .margin({
          top: $r('app.float.size_vp_24'),
          bottom: $r('app.float.size_vp_12')
        })
      Text($r('app.string.dialog_text_privacy_content'))
        .fontSize($r('app.float.size_fp_18'))
        .width('90%')
      Text($r('app.string.dialog_text_privacy_statement'))
        .width('90%')
        .fontColor($r('app.color.color007DFF'))
        .fontSize($r('app.float.size_fp_18'))
        .onClick(() => {
          // globalThis.isJumpPrivacy = true;
          GlobalContext.getContext().setObject('isJumpPrivacy', true);
          this.controller.close();
          router.pushUrl({
            url: "@bundle:com.example.harmonyapp1/librarycommon1/ets/common/welcome/PrivacyPage"
          }).catch((error: Error) => {
            Logger.error('CustomDialogComponent', 'CustomDialog pushUrl error ' + JSON.stringify(error));
          });
        })
      Text($r('app.string.dialog_text_declaration_prompt'))
        .width('90%')
        .fontColor($r('app.color.color182431'))
        .fontSize($r('app.float.size_fp_18'))
        .opacity($r('app.float.size_opacity_06'))
        .margin({ bottom: $r('app.float.size_bottom_24') })
      Row() {
        Text($r('app.string.dialog_button_disagree'))
          .fancy()
          .onClick(() => {
            this.controller.close();
            this.cancel();
          })
        Blank()
          .backgroundColor($r('app.color.colorF5F5F5'))
          .width($r('app.float.size_vp_1'))
          .height($r('app.float.size_vp_32'))
        Text($r('app.string.dialog_button_agree'))
          .fancy()
          .onClick(() => {
            this.controller.close();
            this.confirm();
          })
      }
      .margin({ bottom: '3.1%' })
    }
    .width('93.3%')
    .borderRadius(24)
    .backgroundColor(Color.White)
  }
}

// Common text styles.
@Extend(Text) function fancy() {
  .fontColor($r("app.color.color007DFF"))
  .fontSize($r("app.float.size_fp_16"))
  .textAlign(TextAlign.Center)
  .fontWeight(FontWeight.Medium)
  .layoutWeight(1)
}