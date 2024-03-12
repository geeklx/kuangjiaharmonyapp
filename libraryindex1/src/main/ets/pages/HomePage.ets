import { ResManager, StyleConstants } from 'librarycommon1'
import CategoryTabBar from '../view/topview/CategoryTabbar'

const searchSwiper: string[] = [
  '文案1',
  '文案2',
  "文案3",
  "文案4"
]

@Entry
@Component
export struct HomePage {
  @State message: string = 'Hello World'
  @State needChange: boolean = false;

  build() {
    Flex({ direction: FlexDirection.Column }) {
      this.SearchTitle()
      CategoryTabBar({ needChange: $needChange })
    }.backgroundColor(this.needChange ? ResManager.getDefaultColor() : Color.White)
  }

  @Builder
  SearchTitle() {
    Flex({ justifyContent: FlexAlign.SpaceBetween }) {
      Row() {
        Image($r('app.media.topbar_isolated_search_icon_Normal'))
          .width($r('app.float.vp_twenty'))
          .height($r('app.float.vp_twenty'))
          .margin({
            left: $r('app.float.vp_twelve'),
            right: $r('app.float.vp_eight')
          })
        //
        Swiper() {
          ForEach(searchSwiper, (item: Resource) => {
            Column() {
              Text(item)
                .fontSize($r('app.float.small_font_size'))
                .fontColor(Color.Black)
            }
            .alignItems(HorizontalAlign.Start)
          }, (item: Resource) => JSON.stringify(item))
        }
        .autoPlay(true)
        .loop(true)
        .vertical(true)
        .indicator(false)
      }
      .width('90%')
      .height($r('app.float.search_swiper_height'))
      .borderRadius($r('app.float.vp_twenty'))
      .backgroundColor(Color.White)
      .margin({ right: 10 })
      //
      Column() {
        Image($r('app.media.add_more_video_Normal'))
          .height(24)
          .width(24)
          .borderRadius(12)
          .borderWidth(1)
          .borderColor(ResManager.getDefaultColor())
          .margin({ top: 2 })
        Blank().height($r('app.float.vp_two'))
        Text('按钮').fontSize(9).fontColor(Color.White).fontWeight(FontWeight.Bold)
      }.width('10%')
    }.width(StyleConstants.FULL_WIDTH).padding(10).backgroundColor(ResManager.getDefaultColor())
  }
}