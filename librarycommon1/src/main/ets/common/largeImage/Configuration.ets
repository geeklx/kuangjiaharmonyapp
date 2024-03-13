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
struct Configuration {
  build(){}
  // @State model: LargeImage.Model = new LargeImage.Model()
  // private swiperController: SwiperController = new SwiperController()
  // @State index: number = 0;
  //
  // aboutToAppear() {
  //   this.model.setImage($r('app.media.card'));
  // }
  //
  // build() {
  //   Stack({ alignContent: Alignment.Bottom }) {
  //     LargeImage({ model: this.model })
  //     Column({ space: 5 }) {
  //       Swiper(this.swiperController) {
  //         Row({ space: 5 }) {
  //           Text('The maximum scale has been set to 50dpi. You can zoom in until the image is very pixellated.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .fontSize(14)
  //             .margin({ left: 10 })
  //           Image($r('app.media.next'))
  //             .width(30)
  //             .height(30)
  //             .margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 1;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 0;
  //           })
  //           Text('The minimum tile DPI has been set to 50dpi, to reduce memory usage. The next layer of tiles will not be loaded until the image is very pixellated.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .fontSize(13)
  //           Image($r('app.media.next'))
  //             .width(30)
  //             .height(30)
  //             .margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 2;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 1;
  //           })
  //           Text('Dragging has been disabled. You can only zoom in to the centre point.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next'))
  //             .width(30)
  //             .height(30)
  //             .margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 3;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 2;
  //           })
  //           Text('On double tap, the tapped point is now zoomed to the center of the screen instead of remaining in the same place.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next')).width(30).height(30).margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 4;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 3;
  //           })
  //           Text('On double tap, the zoom now happens immediately.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next')).width(30).height(30).margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 5;
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 4;
  //           })
  //           Text('The double tap zoom scale has been set to 240dpi.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next')).width(30).height(30).margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 6;
  //               this.model.setPanLimit(this.model.PAN_LIMIT_CENTER)
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 5;
  //             this.model.setPanLimit(this.model.PAN_LIMIT_INSIDE)
  //           })
  //           Text('The pan limit has been changed to PAN_LIMIT_CENTER. Panning stops when a corner reaches the centre of the screen.')
  //             .width('100%')
  //             .height(60)
  //             .layoutWeight(1)
  //             .fontColor(0xffffff)
  //             .textAlign(TextAlign.Center)
  //             .fontSize(16)
  //           Image($r('app.media.next')).width(30).height(30).margin({ top: 6, left: 10, right: 10 })
  //             .onClick((event: ClickEvent) => {
  //               this.index = 7;
  //               this.model.setPanLimit(this.model.PAN_LIMIT_OUTSIDE)
  //             })
  //         }.width('100%').height(60).backgroundColor(0x3d3d3d)
  //
  //         Row({ space: 5 }) {
  //           Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
  //             this.index = 6;
  //             this.model.setPanLimit(this.model.PAN_LIMIT_CENTER)
  //           })
  //           Text('The pan limit has been changed to PAN_LIMIT_OUTSIDE. Panning stops when the image is just off screen.')
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
  //         if (index == 2) {
  //           this.model.setPanEnabled(false)
  //         } else {
  //           this.model.setPanEnabled(true)
  //         }
  //         console.info(index.toString())
  //       })
  //     }.height(60).backgroundColor(0x3d3d3d).align(Alignment.Bottom)
  //   }
  // }
}