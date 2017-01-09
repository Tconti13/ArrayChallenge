//
//  ViewController.swift
//  ArraysChallenge
//
//  Created by Julia Roberts on 6/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//Description: Part 1, create an array called myFavoriteMovies in which the items include the names of your four favorite movies. Part 2, create a variable named numberOfMovies and using the count property of the array, place how many movies are in the myFavoriteMovies array. Part 3, there is a variable of type Int named index. Inside of index there is a number 0,1,2 or 3 representing one of the elements of the myFavoriteMovies array. Get element index of myFavoriteMovies and place it into a variable named currentStudent. HINT: Make sure you complete all three parts of this user story before running the app.

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!

    @IBOutlet weak var stretch2Label: UILabel!
    /***************************************************
    * Start Your Code Here For MVP - Part 1
    ***************************************************/
    var myFavoriteMovies = ["Dodgeball","Forrest Gump","The Longest Yard","Recess"]
    

    /***************************************************
    * End Your Code Here For MVP - Part 1
    ***************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /***************************************************
        * Start Your Code Here For MVP - Part 2
        ***************************************************/
        let numberOfMovies = myFavoriteMovies.count
        print("there are \(numberOfMovies) in the array")
        
        

        
        
        

        /***************************************************
        * End Your Code Here For MVP - Part 2
        ***************************************************/

        return numberOfMovies
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let index = (indexPath as NSIndexPath).row
        
        
        //Part 3, there is a variable of type Int named index. Inside of index there is a number 0,1,2 or 3 representing one of the elements of the myFavoriteMovies array. Get element index of myFavoriteMovies and place it into a variable named currentStudent. var firstItem = shoppingList[0]
        // firstItem is equal to "Eggs"
        /***************************************************
        * Start Your Code Here For MVP - Part 3
        ***************************************************/

        
   
        let currentStudent = myFavoriteMovies[index]
        
        
        /***************************************************
        * End Your Code Here For MVP - Part 3
        ***************************************************/

        
        currentCell.textLabel?.text = currentStudent
        return currentCell
    }
    @IBAction func onStretch1Pressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        myFavoriteMovies.remove(at: 1)
        myFavoriteMovies.append("")
        myFavoriteMovies.insert("The Room", at : 2)
        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/

        myTableView.reloadData()
    }
    @IBAction func onStretch2Pressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
//Description: Without manually editing the original code of the array, remove the movie in element 0. Then, remove the movie in element 1. Next, assign an item from your array to the value of the constant myAllTimeFavorite.
        
        myFavoriteMovies.remove(at: 0)
        myFavoriteMovies.remove(at: 0)
        let myAllTimeFavorite = myFavoriteMovies[1]
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        myTableView.reloadData()
        //Uncomment the line below for Stretch #2
        stretch2Label.text = myAllTimeFavorite
    }
}

