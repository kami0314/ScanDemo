import { ListItemData } from '../common/bean/ListItemData'
import { CommonConstants } from '../common/constants/CommonConstants'
import PageViewModel from '../viewmodel/PageViewModel'
@Component
/**
 * 历史记录
 */
export struct HistoryComponent{
  build(){
    Column(){
      this.Title()
      List(){
        LazyForEach(PageViewModel.getListDataSource(),(item:ListItemData)=>{
          ListItem(){
            Row(){
              Text(item.title)
            }
          }
        })
      }
      .layoutWeight(CommonConstants.LIST_LAYOUT_WEIGHT)
    }
  }

  @Builder Title() {
    Row() {
      Text($r('app.string.scan_history_title'))
        .fontColor($r('app.color.title'))
        .fontSize($r('app.float.title_size'))
    }
    .width(CommonConstants.FULL_WIDTH_PERCENT)
    .height($r('app.float.title_height'))
    .margin({
      top: $r('app.float.title_margin_top'),
      left: $r('app.float.title_margin_left')
    })
  }
}