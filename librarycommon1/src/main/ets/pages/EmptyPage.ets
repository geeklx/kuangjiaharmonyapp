
import { ResManager } from '../constants/ResManager';

@Entry
@Preview
@Component
export struct EmptyPage {
  @State message: string = '空页面';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(ResManager.getDefaultColor())
      }.width('100%')
    }.height('100%').backgroundColor('#FFFFFF')
  }
}