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
import { GlobalContext } from '../../GlobalContext';

/**
 * The privacy agreement page displays the agreement content.
 */
@Entry
@Component
struct PrivacyPage {
  build() {
    Column() {
      Text($r('app.string.privacy_text_title'))
        .fontSize($r('app.float.size_fp_20'))
        .textAlign(TextAlign.Center)
        .margin({
          top: $r('app.float.size_top_10'),
          bottom: $r('app.float.size_bottom_10')
        })
      Text($r('app.string.privacy_text_content'))
        .fontSize($r('app.float.size_fp_18'))
        .margin({
          left: $r('app.float.size_left_24'),
          right: $r('app.float.size_right_24')
        })
      Text($r('app.string.privacy_back'))
        .fontColor($r('app.color.color007DFF'))
        .fontSize($r('app.float.size_fp_20'))
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Medium)
        .onClick(() => {
          // globalThis.isJumpPrivacy = false;
          GlobalContext.getContext().setObject('isJumpPrivacy', false);
          router.back();
        })
        .margin({ top: $r('app.float.size_top_12') })
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
  }

  onBackPress() {
    // globalThis.isJumpPrivacy = false;
    GlobalContext.getContext().setObject('isJumpPrivacy', false);
  }
}