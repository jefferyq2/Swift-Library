import Foundation

// 100.000 saniye kaç dk kaç saat kaç gün

let sec = 100000

func secondsToMin(sec: Int ) -> String {
    
    let min = sec / 60
    let minute = min % 60
    let seconds = sec % 60
    let hour = min / 60
    let hourReal = hour % 60
    let day = hour / 24
    

    return ("\(day) gün \(hourReal) saat \(minute) dakika \(seconds) saniyedir")
}

secondsToMin(sec: 100000)
