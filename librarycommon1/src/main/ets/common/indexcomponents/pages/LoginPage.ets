/**
 * Login page
 */
import CommonConstants from '../constants/CommonConstants'
import router from '@ohos.router';
import promptAction from '@ohos.promptAction';

@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'
  @State account: string = '';
  @State password: string = '';
  @State isShowProgress: boolean = false;
  private timeOutId: number = -1;

  build() {
    Column() {
      Image($r('app.media.logo')).width($r('app.float.logo_image_size')).height($r('app.float.logo_image_size'))
        .margin({ top: $r('app.float.logo_margin_top'), bottom: $r('app.float.logo_margin_bottom') })
      Text($r('app.string.login_page'))
        .fontSize($r('app.float.page_title_text_size'))
        .fontWeight(FontWeight.Medium)
        .fontColor($r('app.color.title_text_color'))
      Text($r('app.string.login_more'))
        .fontSize($r('app.float.normal_text_size'))
        .fontColor($r('app.color.login_more_text_color'))
        .margin({ bottom: $r('app.float.login_more_margin_bottom'), top: $r('app.float.login_more_margin_top') })
      //
      TextInput({ placeholder: $r('app.string.account') })
        .maxLength(CommonConstants.INPUT_ACCOUNT_LENGTH)
        .type(InputType.Number)
        .inputStyle()
        .onChange((value: string) => {
          this.account = value
        })
      Line().lineStyle()
      TextInput({ placeholder: $r('app.string.password') })
        .maxLength(CommonConstants.INPUT_ACCOUNT_LENGTH)
        .type(InputType.Password)
        .inputStyle()
        .onChange((value: string) => {
          this.password = value
        })
      Line().lineStyle()
      //
      Row() {
        Text($r('app.string.message_login')).blueTextStyle()
        Text($r('app.string.forgot_password')).blueTextStyle()
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width(CommonConstants.FULL_PARENT)
      .margin({ top: $r('app.float.forgot_margin_top') })
      //
      Button($r('app.string.login'), { type: ButtonType.Capsule })
        .width(CommonConstants.BUTTON_WIDTH)
        .height($r('app.float.login_button_height'))
        .fontSize($r('app.float.normal_text_size'))
        .fontWeight(FontWeight.Medium)
        .backgroundColor($r('app.color.login_button_color'))
        .margin({ top: $r('app.float.login_button_margin_top'), bottom: $r('app.float.login_button_margin_bottom') })
        .onClick(() => {
          this.login();
        })
      Text($r('app.string.register_account'))
        .fontColor($r('app.color.login_blue_text_color'))
        .fontSize($r('app.float.normal_text_size'))
        .fontWeight(FontWeight.Medium)

      if (this.isShowProgress) {
        LoadingProgress()
          .color($r('app.color.loading_color'))
          .width($r('app.float.login_progress_size'))
          .height($r('app.float.login_progress_size'))
          .margin({ top: $r('app.float.login_progress_margin_top') })
      }

      Blank()

      Text($r('app.string.other_login_method')).fontColor($r('app.color.other_login_text_color'))
        .fontSize($r('app.float.little_text_size'))
        .fontWeight(FontWeight.Medium)
        .margin({ top: $r('app.float.other_login_margin_top'), bottom: $r('app.float.other_login_margin_bottom') })

      Row({ space: CommonConstants.LOGIN_METHODS_SPACE }) {
        this.imageButton($r('app.media.login_method1'))
        this.imageButton($r('app.media.login_method2'))
        this.imageButton($r('app.media.login_method3'))
      }
    }
    .backgroundColor($r('app.color.background'))
    .height(CommonConstants.FULL_PARENT)
    .width(CommonConstants.FULL_PARENT)
    .padding({
      left: $r('app.float.page_padding_hor'),
      right: $r('app.float.page_padding_hor'),
      bottom: $r('app.float.login_page_padding_bottom')
    })
  }

  login(): void {
    if (this.account === '' || this.password === '') {
      promptAction.showToast({ message: $r('app.string.input_empty_tips') })
    } else {
      this.isShowProgress = true;
      if (this.timeOutId === -1) {
        this.timeOutId = setTimeout(() => {
          this.isShowProgress = false;
          this.timeOutId = -1;
          router.replaceUrl({
            // url: 'common/indexcomponents/pages/MainPage',
            url: '@bundle:com.example.harmonyapp1/librarycommon1/ets/common/indexcomponents/pages/MainPage',
            params: {
              data1: 'message'
            }
          })
            .then(() => {
              // success
              console.log("push page success");
            })
            .catch(err => {
              console.error(`replaceUrl failed, code is ${err.code}, message is ${err.message}`);
            })
        }, CommonConstants.LOGIN_DELAY_TIME)
      }
    }
  }

  @Builder
  imageButton(src: Resource) {
    Button()
      .height($r('app.float.other_login_image_size'))
      .width($r('app.float.other_login_image_size'))
      .backgroundColor($r('app.color.background'))
  }

  aboutToDisappear() {
    clearTimeout(this.timeOutId);
    this.timeOutId = -1;

  }
}

/**
 * 样式bufen
 */
@Extend(TextInput) function inputStyle() {
  .placeholderColor($r('app.color.placeholder_color'))
  .height($r('app.float.login_input_height'))
  .fontSize($r('app.float.big_text_size'))
  .backgroundColor($r('app.color.background'))
  .width(CommonConstants.FULL_PARENT)
  .padding({ left: CommonConstants.INPUT_PADDING_LEFT })
  .margin({ top: $r('app.float.input_margin_top') })
}

@Extend(Line) function lineStyle() {
  .width(CommonConstants.FULL_PARENT)
  .height($r('app.float.line_height'))
  .backgroundColor($r('app.color.line_color'))
}

@Extend(Text) function blueTextStyle() {
  .fontColor($r('app.color.login_blue_text_color'))
  .fontSize($r('app.float.small_text_size'))
  .fontWeight(FontWeight.Medium)
}