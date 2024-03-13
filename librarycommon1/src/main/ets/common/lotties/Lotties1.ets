import lottie, { AnimationItem } from '@ohos/lottie';


export class Lotties1 {
  public renderingSettings: RenderingContextSettings = new RenderingContextSettings(true);
  public renderingContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.renderingSettings);
  public animateItem: AnimationItem | null = null;
  public animateName: string = 'data';
  public loop: number = 0;
  public autoplay: boolean = true;
  public lujing: string = './data.json';

  constructor(renderingSettings: RenderingContextSettings,
              renderingContext: CanvasRenderingContext2D,
              animateItem: AnimationItem,
              animateName: string = 'data',
              lujing: string = './data.json',
              autoplay: boolean = true,
              loop: number = 0) {
    this.renderingSettings = renderingSettings;
    this.renderingContext = renderingContext;
    this.animateItem = animateItem;
    this.animateName = animateName;
    this.lujing = lujing;
    this.autoplay = autoplay;
    this.loop = loop;
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

  /**
   * 开始播放
   * @param animateName data
   * @param loop 10
   * @param lujing1
   */
  public getAnimationItem1(): void {
    //
    if (this.animateItem !== undefined && this.animateName != null) {
      this.animateItem.destroy();
      this.animateItem = null;
    }
    this.animateItem = lottie.loadAnimation({
      container: this.renderingContext,
      renderer: 'canvas',
      loop: this.loop,
      autoplay: this.autoplay,
      name: this.animateName,
      path: this.lujing
    });
  }

  // 结束并回到第0帧 which=0
  public goToAndPlay1(which?: number): void {
    this.animateItem.goToAndPlay(which, true);
  }
}

// export default new Lotties1(renderingSettings, renderingContext, animateItem, animateName, lujing, autoplay, loop)
export default new Lotties1(Lotties1.prototype.renderingSettings,
  Lotties1.prototype.renderingContext,
  Lotties1.prototype.animateItem,
  Lotties1.prototype.animateName,
  Lotties1.prototype.lujing,
  Lotties1.prototype.autoplay,
  Lotties1.prototype.loop)

