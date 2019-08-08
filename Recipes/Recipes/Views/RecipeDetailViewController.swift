//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Taylor Lyles on 8/6/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
	
	var recipe: Recipe? {
		didSet {
			updateViews()
		}
	}
	
	@IBOutlet weak var recipeDetailVCLabel: UILabel!
	@IBOutlet weak var recipeDetailVCTextView: UITextView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		updateViews()
		
    }
	
	private func updateViews() {
		if isViewLoaded {
			guard let name = recipe?.name,
				let instruct = recipe?.instructions
				else { return }
			
			recipeDetailVCLabel.text = name
			recipeDetailVCTextView.text = instruct
		}
	}

}
