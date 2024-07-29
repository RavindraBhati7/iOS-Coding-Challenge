import UIKit

// Define a model to match the expected JSON structure
struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}


// Define the URL for the API endpoint
let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

// Create a data task to fetch the data
let task = URLSession.shared.dataTask(with: url) { data, response, error in
    // Check for errors
    if let error = error {
        print("Error: \(error)")
        return
    }
    // Ensure we got data
    guard let data = data else {
        print("No data")
        return
    }
    // Decode the JSON data
    do {
    
        // Parse the JSON into an array of Post objects
        let posts = try JSONDecoder().decode([Post].self, from: data)
        
        // Print the posts
        for post in posts {
            print("Post \(post.id): \(post.title)")
        }
        
    } catch {
        print("Error decoding JSON: \(error)")
    }
}

// Start the task
task.resume()
