class CategoryTitleViewModel {
  static readonly TabBars_DEFAULT_NEWS_TYPES: Array<string> = [
    '全部',
    '热榜',
    '国际',
    '娱乐',
    '军事',
    '体育',
    '科技',
    '手机',
    '电影',
    '数码',
  ]

  getDefaultCategoryList(): string[] {
    return CategoryTitleViewModel.TabBars_DEFAULT_NEWS_TYPES;
  }
}

export class NewsTypeBean {
  id: number = 0;
  name: ResourceStr = '';
}


let categoryTitleViewModel = new CategoryTitleViewModel();

export default categoryTitleViewModel as CategoryTitleViewModel;