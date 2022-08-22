//
//  ViewController.swift
//  TodoList
//
//  Created by Nortiz M1 on 2022/08/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func tabEditButton(_ sender: UIBarButtonItem) {
	}
	
	@IBAction func tabAddButton(_ sender: UIBarButtonItem) {
	
		let alert = UIAlertController(title: "할 일 등록", message: nil, preferredStyle: .alert)
		let registerButton = UIAlertAction(title: "등록", style: .default, handler: { _ in
			// 클로저 정의 - 등록 버튼을 눌렀을 때 실행되는 부분
			// 할 일 추가
			debugPrint("\(alert.textFields?[0].text)")
			
		})
		let cancelButton = UIAlertAction(title: "취소", style: .cancel, handler: nil)
		
		alert.addAction(cancelButton)
		alert.addAction(registerButton)
		alert.addTextField(configurationHandler: { textField in
			textField.placeholder = "할 일을 입력해주세요."
		}) // Alert 을 표시하기 전에 텍스트 필트를 구성하기 위한 클로저
		self.present(alert, animated: true, completion: nil)
	}
}

