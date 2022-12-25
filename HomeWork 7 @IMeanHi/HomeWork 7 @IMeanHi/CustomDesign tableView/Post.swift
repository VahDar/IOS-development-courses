import UIKit

struct Post {
    
    var avatarImageName: String
    var postImageName: String
    var viewsCount: Int
    var description: String
    var countOfComments: Int
    var postedAt: String
    var avatarImage: UIImage
    var mainImage: UIImage
    
}

let postOne = Post(avatarImageName: "Tom", postImageName: "UI/UX_Design", viewsCount: 323, description: "To help your design feel at home in iOS, prioritize the following ways to incorporate these features and capabilities. ", countOfComments: 52, postedAt: "30 min ago", avatarImage: UIImage(named: "ava")!, mainImage: UIImage(named: "design")!)

let postTwo = Post(avatarImageName: "Tech_Geek", postImageName: "Tech in future", viewsCount: 121, description: "Technology is the application of knowledge to reach practical goals in a specifiable and reproducible way. The word technology may also mean the product of such an endeavor.: 117  The use of technology is widely prevalent in medicine, science, industry, communication, transportation, and daily life. Technologies include physical objects like utensils or machines and intangible tools such as software.  ", countOfComments: 32, postedAt: "55 min ago", avatarImage: UIImage(named: "avateck")!, mainImage: UIImage(named: "tech")!)


