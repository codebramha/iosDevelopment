struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
}

let firstPost = Post(title: "My IOS dev", author: "Harikanth", tag: Tag(name: "IOS"))