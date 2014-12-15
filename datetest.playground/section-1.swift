// Playground - noun: a place where people can play

import UIKit

var today = NSDate()

var calendar = NSCalendar.currentCalendar()

let todayComp:NSDateComponents = calendar.components( .WeekdayCalendarUnit, fromDate: today)

todayComp.weekday

//NSCalendar* cal = [NSCalendar currentCalendar];
//NSDateComponents* comp = [cal components:NSWeekdayCalendarUnit fromDate:[NSDate date]];
//return [comp weekday];
