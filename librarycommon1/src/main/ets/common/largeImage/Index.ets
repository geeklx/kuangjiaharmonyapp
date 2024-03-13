import router from '@ohos.router';

@Entry
@Component
struct Index {
  build() {
    Flex({ direction: FlexDirection.Column }) {
      Text('Basic features')
        .width('100%')
        .height(60)
        .fontColor(0xffffff)
        .fontSize(30)
        .textAlign(TextAlign.Center)
        .margin({ top: 10 })
        .onClick((event: ClickEvent) => {
          let path = 'common/largeImage/BasicFeatures'
          console.log("jump:" + path);
          router.push({
            url: path,
          });
        })
      Text('Image display')
        .width('100%')
        .height(60)
        .fontColor(0xffffff)
        .fontSize(30)
        .textAlign(TextAlign.Center)
        .onClick((event: ClickEvent) => {
          let path = 'pages/ImageDisplay'
          console.log("jump:" + path);
          router.push({
            url: path,
          });
        })
      Text('Event handling')
        .width('100%')
        .height(60)
        .fontColor(0xffffff)
        .fontSize(30)
        .textAlign(TextAlign.Center)
        .onClick((event: ClickEvent) => {
          let path = 'common/largeImage/EventHandling'
          console.log("jump:" + path);
          router.push({
            url: path,
          });
        })
      Text('Advanced event handling')
        .width('100%')
        .height(60)
        .fontColor(0xffffff)
        .fontSize(30)
        .textAlign(TextAlign.Center)
        .onClick((event: ClickEvent) => {
          let path = 'common/largeImage/AdvancedEventHandling'
          console.log("jump:" + path);
          router.push({
            url: path,
          });
        })
      Text('Configuration')
        .width('100%')
        .height(60)
        .fontColor(0xffffff)
        .fontSize(30)
        .textAlign(TextAlign.Center)
        .onClick((event: ClickEvent) => {
          let path = 'common/largeImage/Configuration'
          console.log("jump:" + path);
          router.push({
            url: path,
          });
        })
    }
    .backgroundColor(0x000000)
  }
}