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

// import { LargeImage } from '@ohos/LargeImage';

@Entry
@Component
struct ImageDisplay {
  build(){}
  // @State model: LargeImage.Model = new LargeImage.Model();
  // private swiperController: SwiperController = new SwiperController();
  // @State index: number = 0;
  // @State rotateValue: number = 0;
  //
  // aboutToAppear() {
  //   this.model.setImage($r('app.media.card'));
  //   this.model.setMaxScale(2);
  // }
  //
  // build() {
  //   Stack({ alignContent: Alignment.Bottom }) {
  //     if(this.index == 0) {
  //       LargeImage({ model: this.model })
  //     }
  //     if(this.index == 1) {
  //       LargeImage({ model: this.model })
  //     }
  //     Column({ space: 5 }) {
  //       Swiper(this.swiperController) {
  //         Row({ space: 5 }) {
  //           Text('This image is 7,800 x 6,240 pixels. On most devices it will be subsampled, and higher quality tiles are loaded as you zoom in.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next'))
  //             .width(30)
  //             .height(30)
  //             .margin({ top: 6, left: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.swiperController.showNext()
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.swiperController.showPrevious()
  //           })
  //           Text('This image has been rotated 90 degrees. Tap the button to rotate it. EXIF rotation is supported for external files.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.rotate'))
  //             .width(30)
  //             .height(30)
  //             .margin({ top: 6, left: 10, right: 20 })
  //             .onClick((event: ClickEvent) => {
  //               this.rotateValue += 90;
  //               this.model.setOrientation(this.rotateValue)
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //       }
  //       .index(this.index)
  //       .autoPlay(false)
  //       .indicator(false)
  //       .loop(false)
  //       .duration(50)
  //       .vertical(false)
  //       .itemSpace(0)
  //       .onChange((index: number) => {
  //         if (index == 1) {
  //           this.model = new LargeImage.Model();
  //           this.model.setImage($r('app.media.swissroad'));
  //           this.index = 1;
  //         }
  //         if(index == 0) {
  //           this.model = new LargeImage.Model();
  //           this.model.setImage($r('app.media.card'));
  //           this.index = 0
  //         }
  //       })
  //     }.height(60).backgroundColor(0x3d3d3d).align(Alignment.Bottom)
  //   }
  // }
}