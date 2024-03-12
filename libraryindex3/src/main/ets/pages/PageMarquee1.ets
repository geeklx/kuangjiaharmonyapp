
import { MarqueeView } from 'librarycommon1'

@Entry
@Component
struct PageMarquee1 {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        // Text(this.message)
        //   .fontSize(50)
        //   .fontWeight(FontWeight.Bold)
        MarqueeView()
      }
      .width('100%')
    }
    .height('100%')
  }
}