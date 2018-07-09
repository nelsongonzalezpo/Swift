import Foundation

public class Model
{
    static var pueblos: Array<Pueblo> = []
    static var currentPlace: Pueblo? = nil
    
    static func initialize()
    {
        var file : UDLAPStringFile
        var i : Int
        
        var name: String
        var latitude : Double
        var longitude : Double
        var image : String
        var text : String
        var pueblo : Pueblo
        
        //
        
        file = UDLAPStringFile("PueblosMagicos")
        file.open()
        i = 0
        
        while(i < file.size())
        {
            name = file.get(i)!
            latitude = Double(file.get(i+1)!)!
            longitude = Double(file.get(i+2)!)!
            text = file.get(i+3)!
            image = String(file.get(i+4)!)!
            
            //
            
            pueblo = Pueblo(name, latitude, longitude, image, text)
            Model.pueblos.append(pueblo)
            i = i + 6
        }//END WHILE
        
        Model.currentPlace = pueblos[0]
        
        
        for aPueblo in Model.pueblos
        {
            print(aPueblo.name)
            print(aPueblo.latitude)
            print(aPueblo.longitude)
            print(aPueblo.imageName)
            print(aPueblo.text)
            
        }
    }
}
