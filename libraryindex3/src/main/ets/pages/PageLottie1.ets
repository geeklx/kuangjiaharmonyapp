import lottie, { AnimationItem } from '@ohos/lottie';
import { logger } from 'librarycommon1';
import util from '@ohos.util';
import common from '@ohos.app.ability.common';


@Entry
@Component
struct PageLottie1 {
  @State message: string = 'Hello World'
  private renderingSettings: RenderingContextSettings = new RenderingContextSettings(true);
  private renderingContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.renderingSettings);
  private animateName: string = 'data1';
  private animateItem: AnimationItem | null = null;
  @State canvasTitle: Resource | undefined = undefined;
  private path: string = "common/lotties/data.json"
  private jsonData2: object | null = null;

  async aboutToAppear() {
    let resStr = new util.TextDecoder('utf-8', { ignoreBOM: true });
    let context = getContext(this).createModuleContext('librarycommon1') as common.UIAbilityContext
    context.resourceManager.getRawFile('data1.json', (err: Error, data: Uint8Array) => {
      if (data === null || data === undefined || data.buffer === undefined) {
        return;
      }
      let lottieStr = resStr.decode(new Uint8Array(data.buffer));
      this.jsonData2 = JSON.parse(lottieStr);
    })
  }

  aboutToDisappear(): void {
    logger.info('PageLottie1', `aboutToDisappear`);
    lottie.destroy();
  }

  onPageShow(): void {
    logger.info('PageLottie1', `onPageShow`);
    lottie.play();
  }

  onPageHide(): void {
    logger.info('PageLottie1', `onPageShow`);
    lottie.pause();
  }

  build() {
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.SpaceBetween
    }) {
      // Canvas area
      Column() {
        Canvas(this.renderingContext)
          .width('100%')
          .aspectRatio(1.76)
          .backgroundImage($r('app.media.canvasBg'))
          .backgroundImageSize(ImageSize.Cover)
          .onDisAppear(() => {
            lottie.destroy(this.animateName);
          })
        Text(this.canvasTitle)
          .width('100%')
          .fontSize(14)
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bold)
          .fontColor('#182431')
          .margin({ top: 12 })
          .opacity(0.4)
      }
      .margin({
        top: 10,
        left: 10,
        right: 10
      })

      // Buttons area
      Column({ space: 12 }) {
        Button() {
          Text($r('app.string.outer_button_load'))
            .fontSize(16)
            .fontColor('#007DFF')
            .fontWeight(FontWeight.Bold)
        }
        .width('100%')
        .height(40)
        .backgroundColor('#dedbdb')
        .onClick(() => {
          if (this.animateItem !== null) {
            this.animateItem.destroy();
            this.animateItem = null;
          }
          this.canvasTitle = $r('app.string.outer_button_load');
          this.animateItem = lottie.loadAnimation({
            container: this.renderingContext,
            renderer: 'canvas',
            loop: 10,
            autoplay: true,
            name: this.animateName,
            animationData: this.jsonData2,
            // path: this.path
          });
        })
        // https://gitee.com/openharmony-tpc/lottieArkTS

        Button() {
          Text($r('app.string.outer_button_end'))
            .fontSize(16)
            .fontColor('#007DFF')
            .fontWeight(FontWeight.Bold)
        }
        .width('100%')
        .height(40)
        .backgroundColor('#dedbdb')
        .onClick(() => {
          if (this.animateItem === null) return;
          this.canvasTitle = $r('app.string.outer_button_end');
          this.animateItem.goToAndPlay(0, true);
        })

        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Button() {
            Text($r('app.string.outer_button_start'))
              .fontSize(16)
              .fontColor('#007DFF')
              .fontWeight(FontWeight.Bold)
          }
          .width('49%')
          .height(40)
          .backgroundColor('#dedbdb')
          .onClick(() => {
            if (this.animateItem === null) return;
            this.canvasTitle = $r('app.string.outer_button_start');
            lottie.play();
          })

          Button() {
            Text($r('app.string.outer_button_pause'))
              .fontSize(16)
              .fontColor('#007DFF')
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .height(40)
          .backgroundColor('#dedbdb')
          .onClick(() => {
            if (this.animateItem === null) return;
            this.canvasTitle = $r('app.string.outer_button_pause');
            lottie.pause();
          })
        }
      }
      .padding({
        left: 23,
        right: 23,
        bottom: 41
      })
    }
    .height('100%')
  }
}