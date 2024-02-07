// -*- mode: swift; swift-mode:basic-offset: 2; -*-
// Copyright © 2022 Massachusetts Institute of Technology. All rights reserved.

import Foundation
import DGCharts

open class PointChartDataModel: Chart2DDataModel {
  // <E: Charts.ChartDataEntry, D: BarLineScatterCandleBubbleChartData, V: ChartViewBase>
  init(data: DGCharts.ChartData, view: PointChartView) {
    super.init(data: data, view: view)
  }
  public func getEntryFromTuple(tuple: YailList<AnyObject>) -> ChartDataEntry {
    // TODO: NEED TO HANDLE POSSIBLE ERRORS
    do {
      //var xValue = try tuple[0] as! String
      //var yValue = try tuple[1] as! String
      
      // the getString() function in the Java code automatically adds a +1 to index
      let xValue: String = "\(tuple[0+1])"
      let yValue: String = "\(tuple[1+1])"

      let x: Double = Double(xValue) ?? -1
      let y: Double = Double(yValue) ?? -1
      return ChartDataEntry(x: x, y: y)
      // TODO: change ERROR MESSAGE, do I need to add error messages
      //view.form?.form?.dispatchErrorOccurredEvent(chart, "GetEntryFromTuple", ErrorMessage.ERROR_ACTIVITY_STARTER_NO_ACTION_INFO, xValue, yValue)

    } catch {
    }
    
  }
  
}
