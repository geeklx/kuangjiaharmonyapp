
import { productDataList,productCollectDataList } from './Datamine';

export class LocalDataManager {

  private static localDataManager: LocalDataManager;


  static instance() {
    if (!LocalDataManager.localDataManager) {
      LocalDataManager.localDataManager = new LocalDataManager();
    }
    return LocalDataManager.localDataManager;
  }


  queryProductList() {
    return productDataList;
  }

  queryProductCollectList() {
    return productCollectDataList;
  }

}


