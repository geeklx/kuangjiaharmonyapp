import CommonConstants from '../common/constants/CommonConstants';
import Logger from '../common/utils/Logger';
import router from '@ohos.router';
import common from '@ohos.app.ability.common';
// import { MarqueeView } from '@ohos/base';

const TAG = '[LifeCyclePage]';

@Entry
@Component
struct LifeCyclePage {
  @State textColor: Color = Color.Black;

  aboutToAppear() {
    this.textColor = Color.Blue;
    Logger.info('[LifeCyclePage]  LifeCyclePage aboutToAppear');
  }

  onPageShow() {
    Logger.info('[LifeCyclePage]  LifeCyclePage onPageShow');
  }

  onPageHide() {
    Logger.info('[LifeCyclePage]  LifeCyclePage onPageHide');
  }

  onBackPress() {
    this.textColor = Color.Red;
    Logger.info('[LifeCyclePage]  LifeCyclePage onBackPress');
    return false;
  }

  aboutToDisappear() {
    Logger.info('[LifeCyclePage]  LifeCyclePage aboutToDisappear');
  }

  build() {
    Scroll() {
      Column() {
        Text($r('app.string.hello_message'))
          .fontSize(CommonConstants.text_font1)
          .fontColor(this.textColor)
          .margin(CommonConstants.text_wt1)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({ url: 'pages/APage', params: {
              src: 'LifeCyclePage的数据'
            } }).catch((error: Error) => {
              Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
            })
          })
        Blank()
        Text($r('app.string.hello_marquee'))
          .fontSize(CommonConstants.text_font1)
          .fontColor(this.textColor)
          .margin(CommonConstants.text_wt1)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/CPage',
              params: {
                src: CommonConstants.index1_message1
              }
            }).catch((error: Error) => {
              Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
            });
          })
        Blank()
        Text($r('app.string.hello_indexfg'))
          .fontSize(CommonConstants.text_font1)
          .fontColor(this.textColor)
          .margin(CommonConstants.text_wt1)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            //
            // this.implicitStartAbility1();
            //
            router.pushUrl({
              url: 'pages/DPage',
              params: {
                src: CommonConstants.index1_message1
              }
            }).catch((error: Error) => {
              Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
            });
            //
          })
        Blank()
        Text('悬浮层案例')
          .fontSize(CommonConstants.text_font1)
          .fontColor(this.textColor)
          .margin(CommonConstants.text_wt1)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/EPage',
              params: {
                src: CommonConstants.index1_message1
              }
            }).catch((error: Error) => {
              Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
            });
            //
          })
      }.width(CommonConstants.text_full_wt1);
    }
    .scrollBar(BarState.Off)

  }

  async implicitStartAbility1() {
    //
    // try {
    //   let want = {
    //     // uncomment line below if wish to implicitly query only in the specific bundle.
    //     // bundleName: "com.example.myapplication",
    //     "action": "ohos.want.action.viewData",
    //     // entities can be omitted.
    //     "entities": ["entity.system.browsable"],
    //     "uri": "https://www.test.com:8080/query/indexcomponents/LoginAb2",
    //     "type": "text/plain"
    //   }
    //   let context = getContext(this) as common.UIAbilityContext;
    //   await context.startAbility(want);
    //   console.info(`explicit start ability succeed`);
    // } catch (error) {
    //   console.info(`explicit start ability failed with ${error.code}`);
    // }
    //
    // featureAbility.startAbility({
    //   want: {
    //     bundleName: "com.example.harmonyapp1",
    //     abilityName: "LoginAb2",
    //     parameters: { page: "pages/page2" }
    //   }
    // }).then((data) => {
    //   console.info("startAbility finish");
    // }).catch((err) => {
    //   console.info("startAbility failed errcode:" + err.code)
    // })
    //
    // let wantInfo = {
    //   bundleName: "com.example.harmonyapp1",
    //   abilityName: "LoginAb2",
    //   parameters: {
    //     page: "pages/second"
    //   }
    // };
    // featureAbility.startAbility({
    //   want: wantInfo
    // }).then((data) => {
    //   console.info('restartAbility success.');
    // }).catch((err) => {
    //   console.info("startAbility failed errcode:" + err.code)
    // });
    // 可以跳转1 打开一个新的app页面
    // try {
    //   // Explicit want with abilityName specified.
    //   let want = {
    //     deviceId: "",
    //     bundleName: "com.example.harmonyapp1",
    //     abilityName: "LoginAb2",
    //     parameters: {
    //       src: CommonConstants.index1_message1
    //     }
    //   };
    //   let context = getContext(this) as common.UIAbilityContext;
    //   await context.startAbility(want);
    //   console.info(`explicit start ability succeed`);
    // } catch (error) {
    //   console.info(`explicit start ability failed with ${error.code}`);
    // }
    // 可以跳转2

  }
  //

}
