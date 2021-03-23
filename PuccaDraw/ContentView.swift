//
//  ContentView.swift
//  PuccaDraw
//
//  Created by Parker Chen on 2021/3/23.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()


        //leftHairBun （髮髻）(circle)
        var path = UIBezierPath()
        let Degree = CGFloat.pi
        path.addArc(withCenter: CGPoint(x: 56, y: 94), radius: 45, startAngle: Degree * 0, endAngle: Degree * 360, clockwise: true)
        //rightHairBun （髮髻）(circle)
        path.move(to: CGPoint(x: 283, y: 92))
        path.addArc(withCenter: CGPoint(x: 283, y: 92), radius: 45, startAngle: Degree * 0, endAngle: Degree * 360, clockwise: true)
        //cuteHair (頭髮)
        path.move(to: CGPoint(x: 228, y: 92))
        path.addQuadCurve(to: CGPoint(x: 115, y: 97), controlPoint: CGPoint(x: 165, y: 75))
        path.addQuadCurve(to: CGPoint(x: 56, y: 157), controlPoint: CGPoint(x: 70, y: 120))
        path.addQuadCurve(to: CGPoint(x: 56, y: 250
        ), controlPoint: CGPoint(x: 33, y: 210))
        path.addQuadCurve(to: CGPoint(x: 159, y: 288
        ), controlPoint: CGPoint(x: 85, y: 293))
        path.addQuadCurve(to: CGPoint(x: 273, y: 260
        ), controlPoint: CGPoint(x: 236, y: 288))
        path.addQuadCurve(to: CGPoint(x: 292, y: 218
        ), controlPoint: CGPoint(x: 290, y: 245))
        path.addQuadCurve(to: CGPoint(x: 286, y: 156
        ), controlPoint: CGPoint(x: 295, y: 188))
        
        var drawLayer = CAShapeLayer()
        drawLayer.path = path.cgPath
        drawLayer.fillColor = UIColor.black.cgColor
        drawLayer.strokeColor = drawLayer.fillColor
        drawLayer.lineWidth = 1
        view.layer.addSublayer(drawLayer)

        
        //cuteFace (臉部)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 261, y: 162))
        path.addQuadCurve(to: CGPoint(x: 154, y: 110
        ), controlPoint: CGPoint(x: 233, y: 101))
        path.addQuadCurve(to: CGPoint(x: 58, y: 201
        ), controlPoint: CGPoint(x: 65, y: 120))
        path.addQuadCurve(to: CGPoint(x: 153, y: 289
        ), controlPoint: CGPoint(x: 50, y: 270))
        path.addQuadCurve(to: CGPoint(x: 261, y: 234
        ), controlPoint: CGPoint(x: 240, y: 281))
        path.addQuadCurve(to: CGPoint(x: 261, y: 162
        ), controlPoint: CGPoint(x: 273, y: 203))
        
        drawLayer = CAShapeLayer()
        drawLayer.path = path.cgPath
        drawLayer.fillColor = CGColor(red: 255/255, green: 231/255, blue: 214/255, alpha: 1)
        drawLayer.strokeColor = drawLayer.fillColor
        drawLayer.lineWidth = 1
        view.layer.addSublayer(drawLayer)
        

        //LeftEyeBrow (眉毛)
        path = UIBezierPath()
        path.move(to: CGPoint(x: 85, y: 137))
        path.addQuadCurve(to: CGPoint(x: 91, y: 138
        ), controlPoint: CGPoint(x: 87, y: 141))
        path.addQuadCurve(to: CGPoint(x: 119, y: 139
        ), controlPoint: CGPoint(x: 105, y: 123))
        path.addQuadCurve(to: CGPoint(x: 124, y: 136
        ), controlPoint: CGPoint(x: 124, y: 141))
        path.addQuadCurve(to: CGPoint(x: 85, y: 137
        ), controlPoint: CGPoint(x: 108, y: 113))
        //rightEyeBrow (眉毛)
        path.move(to: CGPoint(x: 185, y: 135))
        path.addQuadCurve(to: CGPoint(x: 190, y: 139
        ), controlPoint: CGPoint(x: 184, y: 141))
        path.addQuadCurve(to: CGPoint(x: 225, y: 139
        ), controlPoint: CGPoint(x: 210, y: 121))
        path.addQuadCurve(to: CGPoint(x: 230, y: 136
        ), controlPoint: CGPoint(x: 230, y: 141))
        path.addQuadCurve(to: CGPoint(x: 185, y: 135
        ), controlPoint: CGPoint(x: 210, y: 113))
        //leftEye (左眼)
        path.move(to: CGPoint(x:77, y: 177))
        path.addQuadCurve(to: CGPoint(x: 73, y: 182
        ), controlPoint: CGPoint(x: 70, y: 177))
        path.addLine(to: CGPoint(x: 125, y: 205))
        path.addQuadCurve(to: CGPoint(x: 129, y: 200
        ), controlPoint: CGPoint(x: 130, y: 206))
        path.addLine(to: CGPoint(x: 77, y: 177))
        //rightEye (右眼)
        path.move(to: CGPoint(x:180, y: 200))
        path.addQuadCurve(to: CGPoint(x: 182, y: 205
        ), controlPoint: CGPoint(x: 177, y: 204))
        path.addLine(to: CGPoint(x: 244, y: 183))
        path.addQuadCurve(to: CGPoint(x: 241, y: 178
        ), controlPoint: CGPoint(x: 248, y: 178))
        path.addLine(to: CGPoint(x: 180, y: 200))
        //cuteMouthe (嘴)
        path.move(to: CGPoint(x:140, y: 233))
        path.addQuadCurve(to: CGPoint(x: 134, y: 233
        ), controlPoint: CGPoint(x: 137, y: 229))
        path.addCurve(to: CGPoint(x: 172, y: 233), controlPoint1: CGPoint(x: 137, y: 265), controlPoint2: CGPoint(x: 168, y: 265))
        path.addQuadCurve(to: CGPoint(x: 166, y: 232
        ), controlPoint: CGPoint(x: 170, y: 228))
        path.addCurve(to: CGPoint(x: 140, y: 233), controlPoint1: CGPoint(x: 165, y: 258), controlPoint2: CGPoint(x: 140, y: 258))
        
        drawLayer = CAShapeLayer()
        drawLayer.path = path.cgPath
        drawLayer.fillColor = UIColor.black.cgColor
        drawLayer.strokeColor = drawLayer.fillColor
        drawLayer.lineWidth = 1
        view.layer.addSublayer(drawLayer)

        
        //leftBlush (腮紅) (circle)
        path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: 93, y: 238), radius: 16, startAngle: Degree * 0, endAngle: Degree * 360, clockwise: true)
        //rightBlush (腮紅) (circle)
        path.move(to: CGPoint(x:217, y: 238))
        path.addArc(withCenter: CGPoint(x: 217, y: 238), radius: 16, startAngle: Degree * 0, endAngle: Degree * 360, clockwise: true)

        drawLayer = CAShapeLayer()
        drawLayer.path = path.cgPath
        drawLayer.fillColor = CGColor(red: 255/255, green: 131/255, blue: 124/255, alpha: 1)
        drawLayer.strokeColor = drawLayer.fillColor
        drawLayer.lineWidth = 1
        view.layer.addSublayer(drawLayer)
        
        
        //leftFinShadow (魚鰭影)
        path = UIBezierPath()
        path.move(to: CGPoint(x:65, y: 319))
        path.addCurve(to: CGPoint(x: 99, y: 319), controlPoint1: CGPoint(x: 68, y: 342), controlPoint2: CGPoint(x: 100, y: 339))
        //rightFinShadow (魚鰭影)
        path.move(to: CGPoint(x:228, y: 319))
        path.addCurve(to: CGPoint(x: 261, y: 319), controlPoint1: CGPoint(x: 227, y: 342), controlPoint2: CGPoint(x: 260, y: 340))
        
        drawLayer = CAShapeLayer()
        drawLayer.path = path.cgPath
        drawLayer.fillColor = CGColor(red: 255/255, green: 231/255, blue: 214/255, alpha: 1)
        drawLayer.strokeColor = drawLayer.fillColor
        drawLayer.lineWidth = 1
        view.layer.addSublayer(drawLayer)
        
        
        //leftHairPin（髮簪）
        path = UIBezierPath()
        path.move(to: CGPoint(x: 114, y: 98))
        path.addQuadCurve(to: CGPoint(x: 104, y: 92
        ), controlPoint: CGPoint(x: 118, y: 88))
        path.addQuadCurve(to: CGPoint(x: 48, y: 151
        ), controlPoint: CGPoint(x: 65, y: 118))
        path.addQuadCurve(to: CGPoint(x: 60, y: 156
        ), controlPoint: CGPoint(x: 46, y: 163))
        //rightHairPin（髮簪）
        path.move(to: CGPoint(x: 277, y: 152))
        path.addQuadCurve(to: CGPoint(x: 290, y: 140
        ), controlPoint: CGPoint(x: 303, y: 168))
        path.addQuadCurve(to: CGPoint(x: 246, y: 93
        ), controlPoint: CGPoint(x: 272, y: 109))
        path.addQuadCurve(to: CGPoint(x: 230, y: 102
        ), controlPoint: CGPoint(x: 220, y: 80))
        path.addQuadCurve(to: CGPoint(x: 277, y: 152
        ), controlPoint: CGPoint(x: 248, y: 134))
        //leftFin (魚鰭)
        path.move(to: CGPoint(x:78, y: 272))
        path.addCurve(to: CGPoint(x: 61, y: 315), controlPoint1: CGPoint(x: 60, y: 288), controlPoint2: CGPoint(x: 60, y: 308))
        path.addCurve(to: CGPoint(x: 99, y: 318), controlPoint1: CGPoint(x: 65, y: 322), controlPoint2: CGPoint(x: 90, y: 330))
        path.addCurve(to: CGPoint(x: 93, y: 280), controlPoint1: CGPoint(x: 100, y: 307), controlPoint2: CGPoint(x: 96, y: 290))
        //rightFin (魚鰭)
        path.move(to: CGPoint(x:240, y: 264))
        path.addCurve(to: CGPoint(x: 227, y: 319), controlPoint1: CGPoint(x: 227, y: 301), controlPoint2: CGPoint(x: 225, y: 316))
        path.addCurve(to: CGPoint(x: 265, y: 315), controlPoint1: CGPoint(x: 235, y: 327), controlPoint2: CGPoint(x: 256, y: 324))
        path.addCurve(to: CGPoint(x: 240, y: 264), controlPoint1: CGPoint(x: 270, y: 296), controlPoint2: CGPoint(x: 251, y: 269))
        //cuteTail (尾巴)
        path.move(to: CGPoint(x:276, y: 258))
        path.addCurve(to: CGPoint(x: 300, y: 296), controlPoint1: CGPoint(x: 279, y: 272), controlPoint2: CGPoint(x: 290, y: 290))
        path.addCurve(to: CGPoint(x: 330, y: 205), controlPoint1: CGPoint(x: 323, y: 278), controlPoint2: CGPoint(x: 340, y: 240))
        path.addCurve(to: CGPoint(x: 292, y: 218), controlPoint1: CGPoint(x: 320, y: 201), controlPoint2: CGPoint(x: 301, y: 210))
        
        drawLayer = CAShapeLayer()
        drawLayer.path = path.cgPath
        drawLayer.fillColor = CGColor(red: 230/255, green: 0, blue: 10/255, alpha: 1)

        drawLayer.strokeColor = drawLayer.fillColor
        drawLayer.lineWidth = 1
        view.layer.addSublayer(drawLayer)
        
    
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
