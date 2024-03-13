/*
 * Copyright (c) 2021 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// import { LargeImage, OnSingleTapListener, OnLongPressListener } from '@ohos/LargeImage';

import prompt from '@system.prompt';

@Entry
@Component
struct EventHandling {
  build(){}
//   @State model: LargeImage.Model = new LargeImage.Model()
//   private swiperController: SwiperController = new SwiperController()
//   @State index: number = 0;
//
//   aboutToAppear() {
//     this.model.setImage($r('app.media.sanmartino'));
//     let onSingleTapListener: CustomOnSingleTapListener = new CustomOnSingleTapListener();
//     this.model.setSingleTapListener(onSingleTapListener)
//     let onLongPressListener: OnLongPressListener = new CustomOnLongPressListener();
//     this.model.setLongPressListener(onLongPressListener)
//   }
//
//   build() {
//     Stack({ alignContent: Alignment.Bottom }) {
//       LargeImage({ model: this.model })
//       Column({ space: 5 }) {
//         Swiper(this.swiperController) {
//           Row({ space: 5 }) {
//             Text('Touch handling by the image view doesn\'t prevent normal events from working.')
//               .width('100%')
//               .height(60)
//               .fontColor(0xffffff)
//               .layoutWeight(1)
//               .fontSize(14)
//               .margin({ left: 10 })
//             Image($r('app.media.next'))
//               .width(30)
//               .height(30)
//               .margin({ top: 6, left: 10, right: 10 })
//               .onClick((event: ClickEvent) => {
//                 this.index = 1;
//               })
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//
//           Row({ space: 5 }) {
//             Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
//               this.index = 0;
//             })
//             Text('This view has an OnClickListener. Tap once to activate the click.')
//               .width(260)
//               .height(60)
//               .fontColor(0xffffff)
//               .fontSize(14)
//               .margin({ top: 6, left: 10, right: 10 })
//             Image($r('app.media.next'))
//               .width(30)
//               .height(30)
//               .margin({ top: 6, left: 10, right: 10 })
//               .onClick((event: ClickEvent) => {
//                 this.index = 2;
//               })
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//
//           Row({ space: 5 }) {
//             Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
//               this.index = 1;
//             })
//             Text('This view has an OnLongClickListener. Press and hold to activate it.')
//               .width(325)
//               .height(60)
//               .fontColor(0xffffff)
//               .fontSize(14)
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//         }
//         .index(this.index)
//         .autoPlay(false)
//         .indicator(false)
//         .loop(false)
//         .duration(50)
//         .vertical(false)
//         .itemSpace(0)
//         .onChange((index: number) => {
//           console.info(index.toString())
//         })
//       }.height(60).backgroundColor(0x3d3d3d).align(Alignment.Bottom)
//     }
//   }
// }
//
// class CustomOnSingleTapListener implements OnSingleTapListener {
//   onSingleTapConfirmed(event: ClickEvent): void {
//     prompt.showToast({
//       message: 'clicked',
//       duration: 2000,
//     });
//   }
// }
//
// class CustomOnLongPressListener implements OnLongPressListener {
//   onLongPress(event: GestureEvent): void {
//     setTimeout(() => {
//       prompt.showToast({ message: "Long clicked", duration: 1000 })
//     }, 600)
//   }
}