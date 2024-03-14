/*
 * Copyright (c) 2022-2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License")
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { logger } from '../../Logger'

const TAG: string = 'PlayerIndex2'
const video2: string = 'http://cdn2.cdn.haier-jiuzhidao.com/1.mp4'


@Entry
@Component
struct PlayerIndex2 {
  @State message: string = 'Hello World Video'
  @State video: Resource = $rawfile('movie.mp4')
  controller: VideoController = new VideoController()

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Video({
          src: video2,
          currentProgressRate: 1,
          controller: this.controller
        })
          .height(300)
          .objectFit(ImageFit.Contain)
          .autoPlay(false)
          .controls(true)
          .onStart(() => {
            logger.info(TAG, "play video  success")
          })
          .id("videoCard")
      }
      .width('100%')
      .id("videoCardColumn")
    }
    .height('100%')
  }
}