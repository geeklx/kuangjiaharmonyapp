import { TripDataType } from './DataType';

// 模拟行程数据
export const TRIP_DATA: Array<TripDataType> = [
  {
    id: 0,
    trainNumber: "K101",
    wholeCourse: $r('app.string.whole_course_data_1'),
    startingTime: "8:46",
    endingTime: "9:36",
    timeDifference: $r('app.string.time_difference_data_1'),
    origin: $r('app.string.origin_data'),
    destination: $r('app.string.destination_data_1'),
    ticketEntrance: $r('app.string.ticket_entrance_data_1'),
    vehicleModel: $r('app.string.vehicle_model_data_1')
  },
  {
    id: 1,
    trainNumber: "G101",
    wholeCourse: $r('app.string.whole_course_data_2'),
    startingTime: "9:26",
    endingTime: "13:36",
    timeDifference: $r('app.string.time_difference_data_2'),
    origin: $r('app.string.origin_data'),
    destination:  $r('app.string.destination_data_2'),
    ticketEntrance: $r('app.string.ticket_entrance_data_2'),
    vehicleModel: $r('app.string.vehicle_model_data_2')
  }
]