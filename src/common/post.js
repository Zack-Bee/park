export default (url, data) => {
    return new Promise((resolve, reject) => {
        wx.request({
            url,
            data,
            header: {
                "content-type": "application/json"
            },
            method: "POST",
            success(res) {
                resolve(res)
            },
            fail(err) {
                reject(err)
            }
        })
    })
}
