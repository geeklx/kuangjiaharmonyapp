import {
  BasePath,
  BaseService,
  Body,
  ConnectTimeout,
  DELETE,
  Field,
  FieldMap,
  FormUrlEncoded,
  GET,
  HEAD,
  Header,
  HeaderMap,
  OPTIONS,
  POST,
  PUT,
  Queries,
  Query,
  QueryMap,
  ReadTimeout,
  Response,
  ServiceBuilder,
  UrlPath
} from '@ohos/retrofit';

import { Chain, HttpClient, Interceptor, TimeUnit } from '@ohos/httpclient';

import {
  FieldsData,
  HeadersData,
  Data,
  getResponseEmptyObject,
  getDataResponse,
  BlogDataType,
  DeleteQueryMapParams
} from './DataTypeJar';

let client: HttpClient = new  HttpClient.Builder()
  .setConnectTimeout(999999)
  .setReadTimeout(77, TimeUnit.SECONDS)
  .build();

@Entry
@Component
struct Index2 {
  @State status: string = '';
  @State content: string = '';
  @State responseHeader: string = '';
  private scroller: Scroller = new Scroller();

  @Builder
  diyButtonStyle(name: string, fun: Function) {
    Button(name)
      .backgroundColor(0xF55A42)
      .borderRadius(8)
      .backgroundColor(0x317aff)
      .width(px2vp(350))
      .height(50)
      .onClick(() => {
        fun();
      })
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Start }) {
      Row() {
        this.diyButtonStyle("POST", async () => {
          userService1.postRequestWithField("NBA ALL STAR", "Stephen curry and LeBron James", 100000)
            .then((resp: ESObject) => {
              this.status = resp.responseCode.toString();
              this.content = JSON.stringify(resp.result);
            }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("POST-1", async () => {
          userService.postRequestWithFieldMap(new FieldsData("John", "670010", "10")).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("DELETE", async () => {
          userService.deleteRequest("application/json", 18, 20).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })
      }.width('100%').margin({ top: px2vp(30) }).justifyContent(FlexAlign.SpaceAround)

      Row(){
        this.diyButtonStyle("DELETE-1", async () => {
          userService1.deleteRequestWithQueryMap("application/json", 1, { id: 1, hardDelete: true })
            .then((resp: ESObject) => {
              this.status = resp.responseCode.toString();
              this.content = JSON.stringify(resp);
            })
            .catch((err: ESObject) => {
              console.log("Response err=" + err);
            })
        })

        this.diyButtonStyle("DELETE-2", async () => {
          userService.deleteRequestWithQueries("application/json", 1).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("QMAP", async () => {
          let blogData: BlogDataType = new BlogDataType("NBA ALL STAR", "Stephen curry and LeBron James", 300000);
          let headers: HeadersData = new HeadersData("application/json", "text", "'POST', 'PUT', 'GET'");
          userService1.createEmployeeDetails(headers, blogData).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })
      }.width('100%').margin({ top: px2vp(30) }).justifyContent(FlexAlign.SpaceAround)

      Row() {
        this.diyButtonStyle("OPTIONS", async () => {
          let headers: HeadersData = new HeadersData("application/json", "text/*", "'POST', 'PUT', 'GET'");
          userService.optionsRequest(headers).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
            this.responseHeader = JSON.stringify(resp.header);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("HEAD", async () => {
          let headers: HeadersData = new HeadersData("application/json", "text/*", "'POST', 'PUT', 'GET'");
          userService.headRequest(headers).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
            this.responseHeader = JSON.stringify(resp.header);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        Navigator({ target: 'pages/Index', type: NavigationType.Back }) {
          Text('PREV')
            .textCase(TextCase.LowerCase)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .fontColor(0x317aff)
            .borderColor(0x317aff)
        }
      }.width('100%').margin({ top: px2vp(30) }).justifyContent(FlexAlign.SpaceAround)

      Scroll(this.scroller) {
        Column() {
          Text(this.status)
            .fontSize(20)
            .fontWeight(FontWeight.Bold);
          Text(this.content)
            .fontSize(14)
            .maxLines(16)
            .fontWeight(FontWeight.Regular);
          Text(this.responseHeader)
            .fontSize(14)
            .maxLines(16)
            .margin({ top: 10.0 })
            .fontWeight(FontWeight.Regular);
        }
      }
      .scrollBar(BarState.Off)
      .scrollable(ScrollDirection.Vertical)
    }
    .width('100%')
    .height('100%')
    .margin({ top: 10.0 })
  }
}

@BasePath("/")
class UserService extends BaseService {
  // FORMURLENCODE AND FIELDMAP
  @POST("create")
  @FormUrlEncoded
  async postRequestWithFieldMap(@FieldMap fields: ESObject): Promise<Response<Data>> {
    return getDataResponse();
  };

  @DELETE("delete/{recordId}")
  async deleteRequest(@Header("Authorization") authorization: string, @UrlPath("recordId") recordId: number, @Query('size') size: number): Promise<Response> {
    return getResponseEmptyObject();
  };

  @DELETE("delete/{recordId}")
  @Queries({ 'size': 2 })
  async deleteRequestWithQueries(@Header("Authorization") authorization: string, @UrlPath("recordId") recordId: number): Promise<Response> {
    return getResponseEmptyObject();
  };

  // OPTIONS
  @OPTIONS("employee/1")
  async optionsRequest(@HeaderMap headers: ESObject): Promise<Response> {
    return getResponseEmptyObject();
  };

  // HEAD
  @HEAD("employee/1")
  async headRequest(@HeaderMap headers: ESObject): Promise<Response> {
    return getResponseEmptyObject();
  };
}

const userService: UserService = new ServiceBuilder()
  .setEndpoint("https://dummy.restapiexample.com/api/v1")
  .setClient(client)
  .build(UserService);

@BasePath("/")
class UserService1 extends BaseService {
  // FORMURLENCODE AND FIELD
  @POST("posts")
  @FormUrlEncoded
  async postRequestWithField(@Field("key1") key1: string, @Field("key2") key2: string, @Field("key3") key3: number): Promise<Response<Data>> {
    return getDataResponse();
  };

  // HeaderMap
  @POST("posts")
  async createEmployeeDetails(@HeaderMap headers: ESObject, @Body employee: BlogDataType): Promise<Response> {
    return getResponseEmptyObject();
  };

  @DELETE("posts/{recordId}")
  async deleteRequestWithQueryMap(@Header("application/json") authorization: string, @UrlPath("recordId") recordId: number, @QueryMap size: DeleteQueryMapParams): Promise<Response> {
    return getResponseEmptyObject();
  };
}

const userService1: UserService1 = new ServiceBuilder()
  .setEndpoint("https://jsonplaceholder.typicode.com")
  .setClient(client)
  .build(UserService1);