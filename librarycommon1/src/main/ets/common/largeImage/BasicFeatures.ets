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
struct BasicFeatures {
  build(){}
  // private model: LargeImage.Model  = new LargeImage.Model()
  // private swiperController: SwiperController = new SwiperController()
  // @State index: number = 0;
  //
  //
  // aboutToAppear() {
  //   this.model.setImage($r('app.media.sanmartino'));
  // }
  //
  // build() {
  //   Stack({ alignContent: Alignment.Bottom }) {
  //     LargeImage({ model: this.model })
  //     Column({ space: 5 }) {
  //       Swiper(this.swiperController) {
  //         Row({ space: 5 }) {
  //           Text('Use a two finger pinch to zoom in and out. The zoom is centred on the pinch gesture, and you can pan at the same time.')
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
  //               this.index = 1;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 0;
  //           })
  //           Text('Double tap and swipe up or down to zoom in or out. The zoom is centred where you tapped.')
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
  //               this.index = 2;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 1;
  //           })
  //           Text('Use one finger to drag the image around.')
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
  //               this.index = 3;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 2;
  //           })
  //           Text('If you drag quickly and let go, fling momentum keeps the image moving.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next')).width(30).height(30).margin({ top: 6, left: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 4;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 3;
  //           })
  //           Text('Double tap the image to zoom in to that spot. Double tap again to zoom out.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //       }
  //       .index(this.index)
  //       .autoPlay(false)
  //       .indicator(false)
  //       .loop(false)
  //       .duration(50)
  //       .vertical(false)
  //       .itemSpace(0)
  //       .onChange((index: number) => {
  //         console.info(index.toString())
  //       })
  //     }.height(60).backgroundColor(0x3d3d3d).align(Alignment.Bottom)
  //   }
  // }
}