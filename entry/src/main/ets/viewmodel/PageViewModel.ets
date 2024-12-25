import { CommonConstants } from '../common/constants/CommonConstants';
import { ListItemData } from '../common/bean/ListItemData';
import { TabItemData } from '../common/bean/TabItemData';
import { ListDataSource } from './ListDataSource';

/**
 * Binds data to components and provides interfaces.
 */
export class PageViewModel {
  /**
   * Get data sources required by the LazyForEach interface.
   *
   * @return {ListDataSource} new ListDataSource(listItems)
   */
  getListDataSource(): ListDataSource {
    let listItems: Array<ListItemData> = [];
    for (let i = 0; i < CommonConstants.LIST_SIZE; i++) {
      let itemInfo: ListItemData = new ListItemData();
      itemInfo.image = $r('app.media.ic_normal');
      itemInfo.title = $r('app.string.list_item_title');
      itemInfo.subTitle = $r('app.string.list_item_sub_title');
      itemInfo.summary = $r('app.string.list_item_summary');
      itemInfo.rightArrowImage = $r('app.media.ic_right_arrow');
      listItems.push(itemInfo);
    }
    return new ListDataSource(listItems);
  }

  /**
   * Get item information for the tab.
   *
   * @return {Array<TabItemInfo>} tabItems
   */
  getTabData(): Array<TabItemData> {
    let tabItems: Array<TabItemData> = [];
    //首页
    let itemHomeInfo: TabItemData = new TabItemData();
    itemHomeInfo.imageOriginal = $r("app.media.home_icon");
    itemHomeInfo.imageActivated = $r('app.media.home_selected_icon');
    itemHomeInfo.title = $r('app.string.scan_title');
    tabItems.push(itemHomeInfo);
    //历史
    let itemHistoryInfo: TabItemData = new TabItemData();
    itemHistoryInfo.imageOriginal = $r('app.media.history_icon');
    itemHistoryInfo.imageActivated = $r("app.media.history_selected_icon");
    itemHistoryInfo.title = $r('app.string.history_title');
    tabItems.push(itemHistoryInfo);
    //我的
    let itemMineInfo: TabItemData = new TabItemData();
    itemMineInfo.imageOriginal = $r('app.media.mine_icon');
    itemMineInfo.imageActivated = $r('app.media.mine_selected_icon');
    itemMineInfo.title = $r('app.string.mine_title');
    tabItems.push(itemMineInfo);
    return tabItems;
  }

  /**
   * Get detail list Data.
   *
   * @return {Array<ListItemData>} listItems
   */
  getDetailListData(): Array<ListItemData> {
    let listItems: Array<ListItemData> = [];
    for (let i = 0; i < CommonConstants.DETAIL_PAGE_LIST_SIZE; i++) {
      let itemInfo: ListItemData = new ListItemData();
      itemInfo.title = $r('app.string.detail_page_list_title');
      itemInfo.summary = $r('app.string.list_item_summary');
      listItems.push(itemInfo);
    }
    return listItems;
  }
}

let pageViewModel = new PageViewModel();

export default pageViewModel as PageViewModel;