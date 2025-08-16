import QtQuick

Item {
    Canvas {
        id: rootId
        width: 300
        height: 300
        onPaint: function() {
            var ctx = getContext("2d")
            ctx.reset()

            // Move to the center
            var centerX = width / 2
            var centerY = height / 2

            // Draw the arc
            ctx.beginPath()
            ctx.fillStyle = "yellowgreen"
            ctx.moveTo(centerX, centerY)
            ctx.arc(centerX, centerY, width / 2, 0, Math.PI * 1.5, false)
            ctx.lineTo(centerX, centerY)
            ctx.fill()

            ctx.beginPath()
            ctx.fillStyle = "red"
            ctx.moveTo(centerX, centerY)
            ctx.arc(centerX, centerY, width / 4, Math.PI * 1.5, Math.PI, false)
            ctx.lineTo(centerX, centerY)
            ctx.fill()
        }
    }
}
