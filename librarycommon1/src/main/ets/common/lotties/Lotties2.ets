import lottie, { AnimationItem } from '@ohos/lottie';
import { Constants } from '../../constants/Constants';

@Component
export struct Lotties2 {
  @State offsetX: number = -60;
  private renderingSettings: RenderingContextSettings = new RenderingContextSettings(true);
  private renderingContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.renderingSettings);
  private animateItem: AnimationItem | null = null;
  private animateName: string = 'data';
  private loop: number = 3;
  private autoplay: boolean = true;
  private lujing: string = './common/lotties/data.json';

  aboutToAppear() {
    setTimeout(() => {
      this.loadAnimation(true)
    }, 100)
  }

  aboutToDisappear() {
    this.destroy1(this.animateName);
  }

  /**
   * 加载动画
   * @param autoplay 控制动画是否自动播放参数
   */
  loadAnimation(autoplay: boolean) {
    // 销毁动画，减少缓存
    if (this.animateItem !== null) {
      this.animateItem.destroy();
      this.animateItem = null;
    }
    // TODO:知识点:lottie.loadAnimation将json数据生成动画
    this.animateItem = lottie.loadAnimation({
      container: this.renderingContext,
      renderer: 'canvas',
      loop: this.loop,
      autoplay: this.autoplay,
      name: this.animateName,
      path: this.lujing
    });
  }

  build() {
    Stack({
      alignContent: Alignment.Center
    }) {
      Column() {
        // 动画
        Canvas(this.renderingContext)
          .width("100%")
          .height(200)
          // .aspectRatio(1.76)
          // .backgroundImage($r('app.media.canvasBg'))
          // .backgroundImageSize(ImageSize.Cover)
          .onAppear(() => {
            // this.loadAnimation(true)
          })
          .onDisAppear(() => {
            // this.destroy1(this.animateName);
          })
          .onClick(() => {
            // this.loadAnimation(true)
          })
      }

    }.margin({ left: 20, right: 20 })
  }

  public destroy(): void {
    lottie.destroy();
  }

  public play(): void {
    lottie.play();
  }

  public pause(): void {
    lottie.pause();
  }

  // 停止播放这个文件
  public destroy1(name?: string): void {
    lottie.destroy(name);
  }
}