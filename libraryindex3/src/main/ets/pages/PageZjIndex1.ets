import { LoginPage } from 'librarycommon1'

@Entry
@Component
struct PageZjIndex1 {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        LoginPage()
      }
      .width('100%')
    }
    .height('100%')
  }
}