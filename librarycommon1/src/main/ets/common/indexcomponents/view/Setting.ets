/**
 * Setting tab content
 */
import CommonConstants from './../constants/CommonConstants'
import MainViewModel from './../viewmodel/MainViewModel'
import PageResource from './../viewmodel/PageResource'

@Component
export default struct Setting {
  build() {
    Scroll() {
      Column({ space: CommonConstants.COMMON_SPACE }) {
        //
        Column() {
          Text($r('app.string.mainPage_tabTitles_mine'))
            .fontWeight(FontWeight.Medium)
            .fontSize($r('app.float.page_title_text_size'))
            .margin({ top: $r('app.float.mainPage_tabTitles_margin') })
            .padding({ left: $r('app.float.mainPage_tabTitles_padding') })
        }.width(CommonConstants.FULL_PARENT).alignItems(HorizontalAlign.Start)
        //
        Row() {
          Image($r('app.media.account'))
            .width($r('app.float.setting_account_size'))
            .height($r('app.float.setting_account_size'))
          Column() {
            Text($r('app.string.setting_account_name')).fontSize($r('app.float.setting_account_fontSize'))
            Text($r('app.string.setting_account_email'))
              .fontSize($r('app.float.little_text_size'))
              .margin({ top: $r('app.float.setting_name_margin') })
          }.alignItems(HorizontalAlign.Start).margin({ left: $r('app.float.setting_account_margin') })
        }
        .margin({ top: $r('app.float.setting_account_margin') })
        .alignItems(VerticalAlign.Center)
        .width(CommonConstants.FULL_PARENT)
        .height($r('app.float.setting_account_height'))
        .backgroundColor(Color.White)
        .padding({ left: $r('app.float.setting_account_padding') })
        .borderRadius($r('app.float.setting_account_borderRadius'))
        //
        List() {
          ForEach(MainViewModel.getSettingListData(), (item: PageResource) => {
            ListItem() {
              this.settingCell(item)
            }.height($r('app.float.setting_list_height'))
          }, (item: PageResource) => JSON.stringify(item))
        }
        .backgroundColor(Color.White)
        .width(CommonConstants.FULL_PARENT)
        .height(CommonConstants.SET_LIST_WIDTH)
        .divider({
          strokeWidth: $r('app.float.setting_list_strokeWidth'),
          color: Color.Grey,
          startMargin: $r('app.float.setting_list_startMargin'),
          endMargin: $r('app.float.setting_list_endMargin')
        })
        .borderRadius($r('app.float.setting_list_borderRadius'))
        .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })

        Blank()

        //
        Button($r('app.string.setting_button'), { type: ButtonType.Capsule })
          .width(CommonConstants.BUTTON_WIDTH)
          .height($r('app.float.login_button_height'))
          .fontSize($r('app.float.normal_text_size'))
          .fontColor($r('app.color.setting_button_fontColor'))
          .fontWeight(FontWeight.Medium)
          .backgroundColor($r('app.color.setting_button_backgroundColor'))
          .margin({ bottom: $r('app.float.setting_button_bottom') })
      }.height(CommonConstants.FULL_PARENT)
    }
  }

  @Builder settingCell(item: PageResource) {
    Row() {
      Row({ space: CommonConstants.COMMON_SPACE }) {
        Image(item.img).width($r('app.float.setting_size')).height($r('app.float.setting_size'))
        Text(item.title).fontSize($r('app.float.normal_text_size'))
      }
      //
      if (item.others === null) {
        Image($r('app.media.right_grey'))
          .width($r('app.float.setting_jump_width'))
          .height($r('app.float.setting_jump_height'))
      } else {
        Toggle({ type: ToggleType.Switch, isOn: false })
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width(CommonConstants.FULL_PARENT)
    .padding({
      left: $r('app.float.setting_settingCell_left'),
      right: $r('app.float.setting_settingCell_right')
    })
  }
}