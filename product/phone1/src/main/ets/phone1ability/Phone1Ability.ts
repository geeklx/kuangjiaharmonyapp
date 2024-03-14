import UIAbility from '@ohos.app.ability.UIAbility';
import hilog from '@ohos.hilog';
import window from '@ohos.window';

export default class Phone1Ability extends UIAbility {
  onCreate(want, launchParam) {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage) {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    // 获取窗口实例并赋值给全局变量，如此所有页面都可以通过全局变量去修改窗口信息，不需要重新获取
    // windowStage.getMainWindow((err, data) => {
    //   if (err.code) {
    //     console.error('获取失败' + JSON.stringify(err));
    //     return;
    //   }
    //   console.info('获取主窗口的实例：' + JSON.stringify(data));
    //   globalThis.windowClass = data // 赋值给全局变量windowClass
    //   // 设置全屏显示
    //   globalThis.windowClass.setWindowLayoutFullScreen(true)
    //   // 隐藏状态栏显示
    //   globalThis.windowClass.setWindowSystemBarEnable(['navigation'])
    // });
    //
    windowStage.loadContent('pages/LauncherPage', (err, data) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy() {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground() {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground() {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
