import Foundation

struct ImageInfo : Codable
{
    let imageId: String
    let imageDescription: String

    init(imageId: String, imageDescription: String)
    {
        self.imageId = imageId
        self.imageDescription = imageDescription
    }
}