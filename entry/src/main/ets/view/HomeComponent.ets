import router from '@ohos.router'
import { CommonConstants } from '../common/constants/CommonConstants'
@Component
/**
 * 首页扫描按钮
 */
export struct HomeComponent{

  build(){
    Column() {
      Button(){
        Row(){
          Text($r('app.string.scan_title'))
            .fontSize('28fp')
            .fontWeight(FontWeight.Bold)
            .fontColor($r('app.color.start_window_background'))
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
      }
        .width('200vp')
        .height('200vp')
        .borderRadius('100vp')
        .backgroundColor($r('app.color.btn_bg_color'))
        .shadow({color:Color.Black,radius:10,offsetY:5,offsetX:5})
        .onClick(()=>{
          router.pushUrl({
            url:'pages/ScanPage',
          })
        })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width(CommonConstants.SEARCH_WIDTH_PERCENT)
    .height(CommonConstants.COLUMN_HEIGHT_PERCENT)
  }
}