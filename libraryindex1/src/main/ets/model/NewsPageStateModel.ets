import { PageState } from 'librarycommon1/src/main/ets/constants/Constants';

@Observed
export default class NewsPageStateModel {
  public pageState: number = PageState.Loading;
}