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
import { CustomDialogComponent, GlobalContext, logger, Lotties2, ResManager, ResUtils } from 'librarycommon1'
import common from '@ohos.app.ability.common';
import preferences from '@ohos.data.preferences';
import router from '@ohos.router';
import lottie, { AnimationItem } from '@ohos/lottie';
import window from '@ohos.window';

/**
 * The LauncherPage is the entry point of the application and shows how to develop the LauncherPage.
 * Stay on the LauncherPage for a few seconds to jump to the AdvertisingPage.
 * Developers can replace the background image.
 */
@Entry
@Component
struct LauncherPage {
  @State message: string = 'Hello World'
  public renderingSettings: RenderingContextSettings = new RenderingContextSettings(true);
  public renderingContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.renderingSettings);
  public animateItem: AnimationItem | null = null;
  public animateName: string = 'data';
  public loop: number = 0;
  public autoplay: boolean = true;
  public lujing: string = './data.json';

  aboutToAppear() {
    // setTimeout(() => {
    //   router.replaceUrl({ url: "pages/MainPage" })
    // }, 2000)
  }

  private context?: common.UIAbilityContext;
  private timerId: number = 0;
  private isJumpToAdvertising: boolean = false;
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogComponent(
      {
        cancel: () => {
          this.onCancel();
        },
        confirm: () => {
          this.onConfirm();
        }
      }),
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -24 },
    customStyle: true,
    autoCancel: false
  });

  onCancel() {
    // Exit the application.
    this.context?.terminateSelf();
  }

  onConfirm() {
    // Save privacy agreement status.
    this.saveIsPrivacy();
    this.jumpToAdvertisingPage();
  }

  onPageHide() {
    //
    window.getLastWindow(getContext(this), (err, w) => {
      w.setWindowLayoutFullScreen(true)
    })
    //
    if (this.isJumpToAdvertising) {
      router.clear();
    }
    // globalThis.isJumpPrivacy = true;
    GlobalContext.getContext().setObject('isJumpPrivacy', true);
    clearTimeout(this.timerId);
  }

  onPageShow() {
    //
    window.getLastWindow(getContext(this), (err, w) => {
      w.setWindowLayoutFullScreen(false)
    })
    //
    this.context = getContext(this) as common.UIAbilityContext;
    // Get the operation class for saving data.
    this.getDataPreferences(this).then((preferences: preferences.Preferences) => {
      preferences.get('isPrivacy', true).then((value: preferences.ValueType) => {
        logger.info('LauncherPage', 'onPageShow value: ' + value);
        if (value) {
          // let isJumpPrivacy: boolean = globalThis.isJumpPrivacy ?? false;
          let isJumpPrivacy: boolean = (GlobalContext.getContext().getObject('isJumpPrivacy') as boolean) ?? false;
          if (!isJumpPrivacy) {
            this.dialogController.open();
          }
        } else {
          this.jumpToAdvertisingPage();
        }
      });
    });
  }


  /**
   * Jump to advertising page.
   */
  jumpToAdvertisingPage() {
    this.timerId = setTimeout(() => {
      this.isJumpToAdvertising = true;
      router.replaceUrl({
        url: '@bundle:com.example.harmonyapp1/librarycommon1/ets/common/welcome/AdvertisingPage'
      }).catch((error: Error) => {
        logger.error('LauncherPage', 'LauncherPage pushUrl error ' + JSON.stringify(error));
      });
    }, 2000);
  }

  saveIsPrivacy() {
    let preferences: Promise<preferences.Preferences> = this.getDataPreferences(this);
    preferences.then((result: preferences.Preferences) => {
      let privacyPut = result.put('isPrivacy', false);
      result.flush();
      privacyPut.then(() => {
        logger.info('LauncherPage', 'Put the value of startup Successfully.');
      }).catch((err: Error) => {
        logger.error('LauncherPage', 'Put the value of startup Failed, err: ' + err);
      });
    }).catch((err: Error) => {
      logger.error('LauncherPage', 'Get the preferences Failed, err: ' + err);
    });
  }

  /**
   * Get data preferences action.
   */
  getDataPreferences(common: Object) {
    return preferences.getPreferences(getContext(common), 'myStore');
  }

  build() {
    // Stack() {
    //   Image(ResUtils.get_icon2())
    //     .width('100%')
    //     .height('100%')
    //   Column() {
    //     // Image(ResUtils.get_icon2())
    //     //   .width(ResUtils.get_size_vp_119())
    //     //   .height(ResUtils.get_size_vp_119())
    //     //   .margin({ top: '16.2%' })
    //     // Text(ResUtils.get_healthy_life_text())
    //     //   .width(ResUtils.get_size_vp_105())
    //     //   .height(ResUtils.get_size_vp_35())
    //     //   .healthyLifeTextStyle(FontWeight.Bold,
    //     //     0.1,
    //     //     ResUtils.get_size_fp_26(),
    //     //     ResUtils.get_color182431())
    //     //   .margin({ top: '0.5%' })
    //     // Text(ResUtils.get_healthy_life_introduce())
    //     //   .height('2.7%')
    //     //   .healthyLifeTextStyle(FontWeight.Normal,
    //     //     3.4,
    //     //     ResUtils.get_color182431(),
    //     //     ResUtils.get_color182431())
    //     //   .opacity(ResUtils.get_color182431())
    //     //   .margin({ top: '1.3%' })
    //     Lotties2()
    //     Text('鸿蒙星河计划').fontSize(36).fontColor(ResManager.getDefaultColor())
    //     // Blank()
    //   }.flexGrow(1).justifyContent(FlexAlign.Center)
    //
    //   Text(ResUtils.get_healthy_life_introduce()).fontSize(10).margin({ bottom: 40 }).fontColor(0xAAABAB)
    // }
    Stack() {
      Image(ResUtils.get_icon2())
        .width('100%')
        .height('100%')
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
        Column() {
          Lotties2()
          Text('鸿蒙星河计划').fontSize(36).fontColor(ResManager.getDefaultColor())
        }.flexGrow(1).justifyContent(FlexAlign.Center)

        Text('harmonyos技术支持').fontSize(10).margin({ bottom: 40 }).fontColor(0xAAABAB)
      }
    }
  }
}
// Healthy living text common styles.
@Extend(Text) function healthyLifeTextStyle(fontWeight: number,
                                            textAttribute: number, fontSize: Resource, fontColor: Resource) {
  .fontWeight(fontWeight)
  .letterSpacing(textAttribute)
  .fontSize(fontSize)
  .fontColor(fontColor)
}