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
import Logger from '../../Logger';
import window from '@ohos.window';

/**
 * Stay on the advertising page for a few seconds to jump to the home page.
 */
@Entry
@Component
struct AdvertisingPage {
  @State countDownSeconds: number = 2;
  private timeId: number = 0;

  onPageShow() {
    //
    // window.getLastWindow(getContext(this), (err, w) => {
    //   w.setWindowLayoutFullScreen(true)
    // })
    //
    this.timeId = setInterval(() => {
      if (this.countDownSeconds === 0) {
        this.jumpToAppHomePage();
      } else {
        this.countDownSeconds--;
      }
    }, 1000);
  }

  onPageHide() {
    //
    window.getLastWindow(getContext(this), (err, w) => {
      w.setWindowLayoutFullScreen(false)
      w.setWindowSystemBarEnable(['status'])
    })
    //
    router.clear();
    clearInterval(this.timeId);
  }


  /**
   * Jump to app home page.
   */
  jumpToAppHomePage() {
    router.pushUrl({
      url: "@bundle:com.example.harmonyapp1/phone1/ets/pages/MainPage"
    }).catch((error: Error) => {
      Logger.error('AdvertisingPage', 'AdvertisingPage pushUrl error ' + JSON.stringify(error));
    });
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Image($r('app.media.ic_advertising_background'))
        .width('100%')
        .height('100%')
      Text($r('app.string.advertising_text_title', this.countDownSeconds))
        .fontColor(Color.White)
        .fontSize($r('app.float.size_fp_12'))
        .letterSpacing(0.05)
        .backgroundColor($r('app.color.color33000000'))
        .border({
          radius: $r('app.float.size_vp_18'),
          width: 1,
          color: Color.White
        })
        .margin({
          top: $r('app.float.size_vp_30'),
          left: $r('app.float.size_vp_260')
        })
        .padding({
          left: $r('app.float.size_vp_12'),
          top: $r('app.float.size_vp_8'),
          right: $r('app.float.size_vp_12'),
          bottom: $r('app.float.size_vp_8')
        })
        .onClick(() => {
          this.jumpToAppHomePage();
        })
      Row() {
        Image($r('app.media.ic_logo'))
          .width($r('app.float.size_vp_54'))
          .height($r('app.float.size_vp_54'))
          .margin({ bottom: '3.1%' })
        Column() {
          Text($r('app.string.healthy_life_text'))
            .bottomTextStyle(FontWeight.Bolder,
              0.1,
              $r('app.float.size_fp_26'),
              $r('app.color.color182431'))
          Text($r('app.string.healthy_life_introduce'))
            .bottomTextStyle(FontWeight.Normal,
              3.4,
              $r('app.float.size_fp_16'),
              $r('app.color.color182431'))
            .opacity($r('app.float.size_opacity_04'))
            .margin({ top: '0.4%' })
        }
        .alignItems(HorizontalAlign.Start)
        .margin({
          left: '3.1%',
          bottom: '3.1%'
        })
      }
      .alignItems(VerticalAlign.Bottom)
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}
// Bottom text common style.
@Extend(Text) function bottomTextStyle(fontWeight: number,
                                       textAttribute: number, fontSize: Resource, fontColor: Resource) {
  .fontWeight(fontWeight)
  .letterSpacing(textAttribute)
  .fontSize(fontSize)
  .fontColor(fontColor)
}
