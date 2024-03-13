
import {
  BasePath,
  BaseService,
  Body,
  ConnectTimeout,
  DELETE,
  GET,
  HEAD,
  Header,
  HeaderMap,
  Headers,
  POST,
  PUT,
  Query,
  ReadTimeout,
  Response,
  ServiceBuilder,
  Url,
  UrlPath
} from '@ohos/retrofit';
import { getDataResponse, getESObjectResponse } from './DataTypeJar';

@Entry
@Component
struct Index1 {
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
        this.diyButtonStyle("GET", async () => {
          dataService.getRequest("application/json", "dat1", 8).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            console.log("Response message=" + resp.message());
            console.log("Response code=" + resp.code());
            console.log("Response isSuccessful=" + resp.isSuccessful());
            console.log("Response body=" + JSON.stringify(resp.body()));
            this.content = JSON.stringify(resp.result);
            let data: Data = resp.result;
            console.log("Response Data args=" + JSON.stringify(data.args));
            console.log("Response Data headers=" + JSON.stringify(data.headers));
            console.log("Response Data url=" + data.url);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("POST", async () => {
          let user: User = { name: "name-1", email: "email@email.com" } as User;
          dataService.postRequest("application/json", user).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("PUT", async () => {
          let user: User = { name: "name-1", email: "email@email.com" } as User;
          dataService.putRequest("application/json", user).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })
      }.width('100%').margin({ top: px2vp(30) }).justifyContent(FlexAlign.SpaceAround)

      Row(){
        this.diyButtonStyle("GET-2", async () => {
          dataService.getRequest2("application/json", "dat1", 8, "get").then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("GET-3", async () => {
          dataService.getRequest3("dat1", 8).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        this.diyButtonStyle("DELAY", async () => {
          clonedDataService.delayedRequest(5).then((resp: Response) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
            this.responseHeader = JSON.stringify(resp.header);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })
      }.width('100%').margin({ top: px2vp(30) }).justifyContent(FlexAlign.SpaceAround)

      Row() {
        this.diyButtonStyle("URL", async () => {
          let urlString = "https://reqres.in/api/users?page=2";
          dataService.getProfilePic(urlString).then((resp: ESObject) => {
            this.status = resp.responseCode.toString();
            this.content = JSON.stringify(resp.result);
            this.responseHeader = JSON.stringify(resp.header);
          }).catch((err: ESObject) => {
            console.log("Response err=" + err);
          })
        })

        Navigator({ target: 'pages/Index2', type: NavigationType.Push }) {
          Text('NEXT')
            .textCase(TextCase.LowerCase)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .fontColor(0x317aff)
            .borderColor(0x317aff)
        }
      }.width('100%').margin({ top: px2vp(30), bottom: px2vp(30) }).justifyContent(FlexAlign.SpaceAround)


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

interface Data {
  args: ESObject,
  headers: ESObject,
  url: string
}

interface User {
  id?: number;
  name: string;
  email: string;
}

@BasePath("/")
class DataService extends BaseService {
  @GET("get?test=arg123")
  async getRequest(@Header("Content-Type") contentType: string, @Query('d1') data1: string, @Query('d2') data2: number): Promise<Response<Data>> {
    return getDataResponse();
  };

  @POST("post")
  async postRequest(@Header("Content-Type") contentType: string, @Body user: User): Promise<Response<Data>> {
    return getDataResponse();
  };

  @PUT("put")
  async putRequest(@Header("Content-Type") contentType: string, @Body user: User): Promise<Response<Data>> {
    return getDataResponse();
  };

  @GET("{req}?test=arg123")
  async getRequest2(@Header("Content-Type") contentType: string, @Query('d1') data1: string, @Query('d2') data2: number, @UrlPath("req") requestPath: string): Promise<Response<Data>> {
    return getDataResponse();
  };

  @GET("get?test=arg123")
  @Headers({ 'Content-Type': 'application/json', 'Cache-Control': 'max-age=640000' })
  async getRequest3(@Query('d1') data1: string, @Query('d2') data2: number): Promise<Response<Data>> {
    return getDataResponse();
  };

  @ReadTimeout(6000)
  @ConnectTimeout(6000)
  @GET("api/users?delay={delayInSec}")
  async delayedRequest(@UrlPath("delayInSec") recordId: number): Promise<Response<ESObject>> {
    return getESObjectResponse();
  };

  @GET()
  async getProfilePic(@Url photoUrl: string): Promise<Response<Data>> {
    return getDataResponse();
  };
}

const dataService: DataService = new ServiceBuilder()
  .setEndpoint("https://postman-echo.com")
  .build(DataService);

const clonedDataService: DataService = dataService.clone();
clonedDataService.setEndpoint("https://reqres.in");