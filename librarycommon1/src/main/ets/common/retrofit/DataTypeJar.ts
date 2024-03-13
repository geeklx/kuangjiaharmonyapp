import { Response } from '@ohos/retrofit';

export class HeadersData {
  "Content-Type"?: string;
  "Accept"?: string;
  "Allow"?: string;

  constructor(contentType?: string, accept?: string, allow?: string) {
    this["Content-Type"] = contentType;
    this["Accept"] = accept;
    this["Allow"] = allow;
  }
}

export class FieldsData {
  "key1": string;
  "key2": string;
  "key3": string;

  constructor(key1: string, key2: string, key3: string) {
    this["key1"] = key1;
    this["key2"] = key2;
    this["key3"] = key3;
  }
}

export class SizeData {
  "size": number;

  constructor(size: number) {
    this["size"] = size;
  }
}

export class ResultData {
  result: string;

  constructor(res: string) {
    this.result = res;
  }
}



export interface EmployeeDetails {
  name: string;
  salary: number;
  age: number;
}

export interface DeleteQueryMapParams {
  id: number;
  hardDelete: boolean;
}

export class BlogDataType {
  title: string;
  content: string;
  readingVolume: number;

  constructor(title: string, content: string, readingVolume: number) {
    this.title = title;
    this.content = content;
    this.readingVolume = readingVolume;
  }
}

export function getResponseEmptyObject(): Response {
  return {} as Response;
}

export function getDataResponse(): Response<Data> {
  return {} as Response<Data>;
}


// export interface Data {
//   args: Object,
//   headers: Object,
//   url: string
// }
//
// export function getESObjectResponse(): Response<Object> {
//   return {} as Response<Object>;
// }

export interface Data {
  args: ESObject,
  headers: ESObject,
  url: string
}

export function getESObjectResponse(): Response<ESObject> {
  return {} as Response<ESObject>;
}