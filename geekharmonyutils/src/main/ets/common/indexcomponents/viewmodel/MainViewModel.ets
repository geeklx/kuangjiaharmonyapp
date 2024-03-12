/**
 * Binds data to components and provides interfaces.
 */
import PageResource from './PageResource';

export class MainViewModel {

  /**
   * Get swiper image data.
   *
   * @return {Array<Resource>} swiperImages.
   */
  getSwiperImages(): Array<Resource> {
    let swiperImages: Resource[] = [
    $r('app.media.fig1'),
    $r('app.media.fig2'),
    $r('app.media.fig3'),
    $r('app.media.fig4')
    ];
    return swiperImages;
  }

  /**
   * Get data of the first grid.
   *
   * @return {Array<PageResource>} firstGridData.
   */
  getFirstGridData(): Array<PageResource> {
    let firstGridData: PageResource[] = [
      new PageResource($r('app.string.my_love'), $r('app.media.love')),
      new PageResource($r('app.string.history_record'), $r('app.media.record')),
      new PageResource($r('app.string.message'), $r('app.media.message')),
      new PageResource($r('app.string.shopping_cart'), $r('app.media.shopping')),
      new PageResource($r('app.string.my_goal'), $r('app.media.target')),
      new PageResource($r('app.string.group'), $r('app.media.circle')),
      new PageResource($r('app.string.favorites'), $r('app.media.favorite')),
      new PageResource($r('app.string.recycle_bin'), $r('app.media.recycle'))
    ];
    return firstGridData;
  }


  /**
   * Get data of the second grid.
   *
   * @return {Array<PageResource>} secondGridData.
   */
  getSecondGridData(): Array<PageResource> {
    let secondGridData: PageResource[] = [
      new PageResource($r('app.string.mainPage_top'), $r('app.media.top'), $r('app.string.mainPage_text_top')),
      new PageResource($r('app.string.mainPage_new'), $r('app.media.new'), $r('app.string.mainPage_text_new')),
      new PageResource($r('app.string.mainPage_brand'), $r('app.media.brand'), $r('app.string.mainPage_text_brand')),
      new PageResource($r('app.string.mainPage_found'), $r('app.media.found'), $r('app.string.mainPage_text_found'))
    ];
    return secondGridData;
  }


  /**
   * Get data of the setting list.
   *
   * @return {Array<PageResource>} settingListData.
   */
  getSettingListData(): Array<PageResource> {
    let settingListData: PageResource[] = [
      new PageResource($r('app.string.setting_list_news'), $r('app.media.news'), $r("app.string.setting_toggle")),
      new PageResource($r('app.string.setting_list_data'), $r('app.media.data')),
      new PageResource($r('app.string.setting_list_menu'), $r('app.media.menu')),
      new PageResource($r('app.string.setting_list_about'), $r('app.media.about')),
      new PageResource($r('app.string.setting_list_storage'), $r('app.media.storage')),
      new PageResource($r('app.string.setting_list_privacy'), $r('app.media.privacy'))
    ];
    return settingListData;
  }
}

export default new MainViewModel();