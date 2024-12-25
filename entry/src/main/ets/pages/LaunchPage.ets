import router from '@ohos.router'
@Entry
@Component
struct LaunchPage{

  build(){
    Column(){
      Image($r('app.media.icon'))
        .width('200vp')
        .height('200vp')
        .onAppear(()=>{
          setTimeout(()=>{
            router.replaceUrl({
              url:'pages/ListPage'
            })
          },1000)
        })
        .margin({bottom:'20vp'})
      Text($r('app.string.ability_label'))
        .fontSize('30fp')
        .height('30vp')
        .fontColor($r('app.color.btn_bg_color'))
        .fontWeight(FontWeight.Bold)
    }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
  }
}