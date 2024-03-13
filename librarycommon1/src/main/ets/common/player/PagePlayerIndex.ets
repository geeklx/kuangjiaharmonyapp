import common from '@ohos.app.ability.common'
import { logger } from './../Logger'
import router from '@ohos.router'

const TAG: string = 'PagePlayerIndex'
const AUDIO: string = 'audio'
const VIDEO: string = 'video'
const BUNDLE_NAME: string = 'com.example.harmonyapp1'
const AUDIO_ABILITY_NAME: string = "AudioAbility"
const VIDEO_ABILITY_NAME: string = "VideoAbility"


@Entry
@Component
struct PagePlayerIndex {
  private context: common.UIAbilityContext = null
  @State message1: string = '音乐播放1'
  @State message2: string = '视频播放1'

  aboutToAppear() {
    this.context = getContext(this) as common.UIAbilityContext
  }

  build() {
    Row() {
      Column() {
        Text(this.message1)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            // this.context.startAbility({
            //   bundleName: BUNDLE_NAME,
            //   abilityName: AUDIO_ABILITY_NAME
            // }).then(() => {
            //   logger.info(TAG, 'start audio ability success')
            // }).catch((error) => {
            //   logger.error(TAG, 'start audio ability failed, error: ' + JSON.stringify(error))
            // })
            router.push({
              // url: 'common/player/PlayerIndex1',
              url: '@bundle:com.example.harmonyapp1/librarycommon1/ets/common/player/PlayerIndex1',
            });
          })
        Blank()
        Text(this.message2)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.push({
              url: '@bundle:com.example.harmonyapp1/librarycommon1/ets/common/player/PlayerIndex2',
            });
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}