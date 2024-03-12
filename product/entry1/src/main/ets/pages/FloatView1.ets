import prompt from '@ohos.prompt';
import fileIo from '@ohos.fileio';
import featureAbility from '@ohos.ability.featureAbility';
import common from '@ohos.app.ability.common';
import { logger } from '@ohos/geek_harmony_common_utils/src/main/ets/common/log/Logger';
import display from '@ohos.display';

enum FileType {
  'dir' = 0,
  'file' = 1,
  'else' = 2
}

type node = {
  id: number,
  fileName: string,
  fileType: FileType,
  path: string,
  parentId: number,
  size: number,
  mTime: number
}

@Component
export struct FloatView1 {
  @State @Watch('onBallStateChange') ballState: boolean = true
  @State gx: number = 0
  @State gy: number = 0
  @Prop positionX: number
  @Prop positionY: number
  @Prop ballSize: number
  @State tempW: string = '0%'
  @State tempH: string = '0%'
  private Width: Length = '100%'
  private Height: Length = '100%'
  private px = 0
  private py = 0

  onBallStateChange() {
    if (this.ballState === false)
      animateTo({ duration: 300, curve: Curve.LinearOutSlowIn }, () => {
        this.tempW = '100%'
        this.tempH = '100%'
      })
    else {
      this.tempW = '100%'
      this.tempH = '100%'
    }
  }

  build() {
    if (this.ballState) {
      Column() {
        Column() {
          Text('层一').fontColor(Color.White).fontWeight(600)
        }
        .justifyContent(FlexAlign.Center)
        .borderRadius(100)
        .aspectRatio(1)
        .width(this.ballSize)
        .backgroundColor('#b200a9ff')
        .onClick(() => {
          this.ballState = false
        })
        .onTouch(event => {
          if (event.type === TouchType.Move) {
            this.gx = event.touches[0].screenX - this.px - this.positionX
            this.gy = event.touches[0].screenY - this.py - this.positionY
            logger.error("ssssssss", " this.gx=>" + this.gx + "," + "screenX=>" + (px2vp(display.getDefaultDisplaySync()
              .width - this.ballSize))
            + "," + "this.px=>" + this.px
            + "," + "this.positionX=>" + this.positionX)
          }
          else if (event.type === TouchType.Down) {
            this.px = event.touches[0].x
            this.py = event.touches[0].y
          }
          else if (event.type === TouchType.Up) {
            if (this.gx < 0) {
              this.gx = 0
            }
            if (this.gx > (px2vp(display.getDefaultDisplaySync().width) - this.ballSize)) {
              this.gx = (px2vp(display.getDefaultDisplaySync().width) - this.ballSize)
            }
            //
            if (this.gy < 0) {
              this.gy = 0
            }
            if (this.gy > (px2vp(display.getDefaultDisplaySync().height) - this.py - this.positionY)) {
              this.gy = (px2vp(display.getDefaultDisplaySync().height) - this.py - this.positionY)
            }
          }
        })
      }.position({ x: this.gx, y: this.gy })

    } else {
      Column() {
        Column() {
          Text('层二').fontColor(Color.White).fontWeight(600)
        }
        .justifyContent(FlexAlign.Center)
        .borderRadius(100)
        .aspectRatio(1)
        .width(this.ballSize)
        .backgroundColor('#b200a9ff')
        .onClick(() => {
          this.ballState = true

        })
        .onTouch(event => {
          if (event.type === TouchType.Move) {
            this.gx = event.touches[0].screenX - this.px - this.positionX
            this.gy = event.touches[0].screenY - this.py - this.positionY
          }
          else if (event.type === TouchType.Down) {
            this.px = event.touches[0].x
            this.py = event.touches[0].y
          }
        })
      }
      // .width(this.tempW)
      // .height(this.tempH)
      .position({ x: this.gx, y: this.gy })
    }
  }
}

