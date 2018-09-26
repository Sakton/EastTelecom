function dp(x, scale) {
    if (scale < 120) {
        return x
    } else {
        return (x * scale) / 160
    }
}

//function em(x, scale) {
//    if (scale < 120) {
//        return x
//    } else {
//        return (x * scale) / 160
//    }
//}
function loginPassword(login, password, arr) {
    arr[0] = "auth"
    arr[1] = "action"
    arr[2] = "authme"
    arr[3] = login
    arr[4] = "password"
    arr[5] = password
    return arr
}
