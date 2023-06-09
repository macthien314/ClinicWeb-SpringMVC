/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function generateColor() {
    let r = parseInt(Math.random() * 255);
    let g = parseInt(Math.random() * 255);
    let b = parseInt(Math.random() * 255);
    return `rgb( ${r}, ${g}, ${b})`;
}
function numPatientChart(id, numLabels = [], info = [], infoMedCart = []) {
    let colors = []
    for (let i = 0; i < info.length; i++)
        colors.push(generateColor())


    const data = {
        labels: numLabels,
        datasets: [{
                label: 'Thống kê số lượng bệnh nhân đến khám theo tháng',
                data: info,
                backgroundColor: colors,
                hoverOffset: 4

            }],
        labels: numLabels,

    };

    const config = {
        type: 'bar',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")
    new Chart(ctx, config)
}


function revenueMonthChart(id, numLabels = [], info = []) {
    let colors = []
    for (let i = 0; i < info.length; i++)
        colors.push(generateColor())


    const data = {
        labels: numLabels,
        datasets: [{
                label: 'Thống kê doanh thu theo tháng',
                data: info,
                backgroundColor: colors,
                hoverOffset: 4

            }]
    };

    const config = {
        type: 'bar',
        data: data,
    };

    let ctx = document.getElementById(id).getContext("2d")
    new Chart(ctx, config)
}
