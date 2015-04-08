import Foundation

let arr = [1,2,4,53,553,12,1,123,42,12,45,12,5,12,243,12,2,4,5,6,3,3,5,6,3,3,2,2,4,5]

for i in arr {
    
    var anotherFloat: Float = Float(i) * 0.001
    
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(anotherFloat * Float(NSEC_PER_SEC)))
    
    dispatch_after(time, dispatch_get_main_queue()) {
        println(i)
    }
}

CFRunLoopRun()



