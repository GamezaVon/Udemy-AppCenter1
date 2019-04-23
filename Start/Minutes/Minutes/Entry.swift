import Foundation

class Entry: Codable
{
    var title:   String = "Cyka Blyat"
    var content: String = "This is sparta"
    
    var id: String = UUID().uuidString
    
    var createdDate: Date = Date()
    
    init()
    {
    }
    
    init(_ initialTitle: String, _ initialContent: String)
    {
        self.title = initialTitle
        self.content = initialContent
    }
}
