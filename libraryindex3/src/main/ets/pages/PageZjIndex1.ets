import router from '@ohos.router'

@Entry
@Component
struct PageZjIndex1 {
  @State message: string = 'Hello World'

  aboutToAppear() {
    setTimeout(() => {
      router.pushUrl({ url: "@bundle:com.example.harmonyapp1/librarycommon1/ets/common/indexcomponents/pages/LoginPage", params: {
        data1: '上一页的数据'
      } })
    }, 100)
  }

  build() {
    Row() {
      Column() {

      }
      .width('100%')
    }
    .height('100%')
  }
}