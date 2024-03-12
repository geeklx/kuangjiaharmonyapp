import router from '@ohos.router'
import { Lotties2, ResManager } from 'librarycommon1'
// import { data } from 'librarycommon1/src/main/ets/lotties/data';
import lottie, { AnimationItem } from '@ohos/lottie';


@Entry
@Component
struct LaunchPage {
  @State message: string = 'Hello World'
  public renderingSettings: RenderingContextSettings = new RenderingContextSettings(true);
  public renderingContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.renderingSettings);
  public animateItem: AnimationItem | null = null;
  public animateName: string = 'data';
  public loop: number = 0;
  public autoplay: boolean = true;
  public lujing: string = './data.json';

  aboutToAppear() {
    setTimeout(() => {
      router.replaceUrl({ url: "pages/MainPage" })
    }, 2000)
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
      Column() {
        Text('鸿蒙星河计划').fontSize(36).fontColor(ResManager.getDefaultColor())
        // Blank()
        Lotties2()
      }.flexGrow(1).justifyContent(FlexAlign.Center)
      // Row() {
      //   Image($r('app.media.icon_29_Normal'))
      //     .width(48)
      //     .height(48)
      //     .objectFit(ImageFit.Contain)
      //     .borderWidth(0.5)
      //     .borderRadius(10)
      //     .borderColor($r('app.color.border_color'))
      //
      //   Image($r('app.media.logo_label')).width(100).height(40).objectFit(ImageFit.Contain).padding({ left: 10 })
      // }.padding({ bottom: 10 })

      Text('harmonyos技术支持').fontSize(10).margin({ bottom: 40 }).fontColor(0xAAABAB)

    }.height('100%').width('100%').backgroundColor(ResManager.getDefaultBackground())
  }
}