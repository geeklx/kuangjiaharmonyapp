/**
 * 行程信息类型
 *
 * @param id
 * @param trainNumber 列车号
 * @param wholeCourse 全程
 * @param startingTime 起始时间
 * @param endingTime 终止时间
 * @param timeDifference 距出发时间
 * @param origin 起始位置
 * @param destination 目的地
 * @param ticketEntrance 检票口
 * @param vehicleModel 车型
 */
export interface TripDataType {
  id: number;
  trainNumber: string;
  wholeCourse: ResourceStr;
  startingTime: string;
  endingTime: string;
  timeDifference: ResourceStr;
  origin: ResourceStr;
  destination: ResourceStr;
  ticketEntrance: ResourceStr;
  vehicleModel: ResourceStr;
}