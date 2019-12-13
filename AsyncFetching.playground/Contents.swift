import UIKit

var queue = DispatchQueue(label: "Ike", attributes: [.concurrent])

func getName(_ data: Data) -> String? {
    if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
        let name = json["name"] as? String {
        return name
    } else {
        return nil
    }
}


for i in (1...5) {
    if let url = URL(string: "https://swapi.co/api/people/\(i)/") {
        
    }
    
    queue.async {
        guard let data = try? Data(contentsOf: url) else {return}
        print(getName(data) ?? "OOps")
    }
}
