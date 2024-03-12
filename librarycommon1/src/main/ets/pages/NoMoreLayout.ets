import { Constants } from '../constants/Constants'

@Component
export struct NoMoreLayout {
  build() {
    Row() {
      Text('没有更多数据了')
        .fontSize(12)
        .textAlign(TextAlign.Center)
    }.justifyContent(FlexAlign.Center)
    .width(Constants.FULL_PERCENT)
    .height(70)
  }
}