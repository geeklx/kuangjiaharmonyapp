// import { LargeImage, OnDoubleTapListener, OnLongPressListener, OnSingleTapListener, } from '@ohos/LargeImage';
import prompt from '@system.prompt';

@Entry
@Component
struct AdvancedEventHandling {
  build(){}
  // private model: LargeImage.Model = new LargeImage.Model()
//   private swiperController: SwiperController = new SwiperController()
//   @State index: number = 0;
//
//   aboutToAppear() {
//     this.model.setImage($r('app.media.sanmartino'));
//     this.model.setZoomEnabled(false);
//     let onSingleTapListener: CustomOnSingleTapListener = new CustomOnSingleTapListener(this.model);
//     this.model.setSingleTapListener(onSingleTapListener);
//     let onLongPressListener: CustomOnLongPressListener = new CustomOnLongPressListener(this.model);
//     this.model.setLongPressListener(onLongPressListener);
//     let onDoubleTapListener: CustomOnDoubleTapListener = new CustomOnDoubleTapListener(this.model);
//     this.model.setDoubleTapListener(onDoubleTapListener);
//   }
//
//   build() {
//     Stack({ alignContent: Alignment.Bottom }) {
//       // LargeImage({ model: this.model })
//       Column({ space: 5 }) {
//         Swiper(this.swiperController) {
//           Row({ space: 5 }) {
//             Text('Some gestures can be overridden with your own GestureDetector without affecting the image view. This allows you to get the coordinates of the event.')
//               .width('100%')
//               .height(60)
//               .layoutWeight(1)
//               .fontColor(0xffffff)
//               .textAlign(TextAlign.Center)
//               .fontSize(16)
//             Image($r('app.media.next'))
//               .width(30)
//               .height(30)
//               .margin({ top: 6, left: 10 })
//               .onClick((event: ClickEvent) => {
//                 this.index = 1;
//               })
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//
//           Row({ space: 5 }) {
//             Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
//               this.index = 0;
//             })
//             Text('onSingleTapConfirmed has been overridden. Tap the image to see coordinates.')
//               .width('100%')
//               .height(60)
//               .layoutWeight(1)
//               .fontColor(0xffffff)
//               .textAlign(TextAlign.Center)
//               .fontSize(16)
//             Image($r('app.media.next'))
//               .width(30)
//               .height(30)
//               .margin({ top: 6, left: 10 })
//               .onClick((event: ClickEvent) => {
//                 this.index = 2;
//               })
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//
//           Row({ space: 5 }) {
//             Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
//               this.index = 1;
//             })
//             Text('onDoubleTap has been overridden. Tap the image to see coordinates. This overrides the default zoom in behaviour.')
//               .width('100%')
//               .height(60)
//               .layoutWeight(1)
//               .fontColor(0xffffff)
//               .textAlign(TextAlign.Center)
//               .fontSize(16)
//             Image($r('app.media.next'))
//               .width(30)
//               .height(30)
//               .margin({ top: 6, left: 10 })
//               .onClick((event: ClickEvent) => {
//                 this.index = 3;
//               })
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//
//           Row({ space: 5 }) {
//             Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
//               this.index = 2;
//             })
//             Text('onLongPress has been overridden. Press and hold the image')
//               .width('100%')
//               .height(60)
//               .layoutWeight(1)
//               .fontColor(0xffffff)
//               .textAlign(TextAlign.Center)
//               .fontSize(16)
//             Image($r('app.media.next')).width(30).height(30).margin({ top: 6, left: 10 })
//               .onClick((event: ClickEvent) => {
//                 this.index = 4;
//               })
//           }.width('100%').height(60).backgroundColor(0x3d3d3d)
//
//           Row({ space: 5 }) {
//             Image($r('app.media.previous')).width(30).height(30).margin({ top: 6 }).onClick((event: ClickEvent) => {
//               this.index = 3;
//             })
//             Text('You can override any event you want, but customising swipe,fling and zoom gestures will stop the view working normally.')
//               .width('100%')
//               .height(60)
//               .layoutWeight(1)
//               .fontColor(0xffffff)
//               .textAlign(TextAlign.Center)
//               .fontSize(16)
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
//
// class CustomOnSingleTapListener implements OnSingleTapListener {
//   model: LargeImage.Model = new LargeImage.Model()
//
//   constructor(model: LargeImage.Model) {
//     this.model = model
//   }
//
//   onSingleTapConfirmed(event: ClickEvent) {
//     prompt.showToast({
//       message: " Single tap: " + this.model.viewToSourceX(event.x) + "," + this.model.viewToSourceY(event.y),
//       duration: 2000,
//     });
//     console.info("LargeImage Width" + this.model.getLoadedImageWidth());
//     console.info("LargeImage Height" + this.model.getLoadedImageHeight());
//   }
// }
//
// class CustomOnLongPressListener implements OnLongPressListener {
//   model: LargeImage.Model = new LargeImage.Model()
//
//   constructor(model: LargeImage.Model) {
//     this.model = model
//   }
//
//   onLongPress(event: GestureEvent) {
//     let fingerInfo: FingerInfo[] = event.fingerList;
//     if (!!fingerInfo && fingerInfo.length > 0) {
//       prompt.showToast({
//         message: "Long press" + this.model.viewToSourceX(fingerInfo[0].globalX) + "," + this.model.viewToSourceY(fingerInfo[0].globalY),
//         duration: 2000
//       })
//     }
//   }
// }
//
// class CustomOnDoubleTapListener implements OnDoubleTapListener {
//   model: LargeImage.Model = new LargeImage.Model()
//
//   constructor(model: LargeImage.Model) {
//     this.model = model
//   }
//
//   onDoubleTap(event: GestureEvent) {
//     let fingerInfo: FingerInfo[] = event.fingerList;
//     if (!!fingerInfo && fingerInfo.length > 0) {
//       prompt.showToast({
//         message: "Double tap" + this.model.viewToSourceX(fingerInfo[0].globalX) + "," + this.model.viewToSourceY(fingerInfo[0].globalY),
//         duration: 1000
//       })
//     }
//   }
}

