//
//  ViewController.swift
//  DevRef
//
//  Created by Alex on 24.05.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    let patternsName = ["Фабричный метод","Абстрактная фабрика","Строитель","Прототип","Одиночка","Адаптер","Мост","Компоновщик","Декоратор","Фасад","Легковес","Заместитель","Цепочка обязанностей","Команда","Итератор","Посредник","Снимок","Наблюдатель","Состояние","Стратегия","Шаблонный метод","Посетитель"]

    override func viewDidLoad() {
    super.viewDidLoad()
    }
}

  extension ViewController: UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return patternsName.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath )
    let patternsIteam = patternsName[indexPath.row]
      cell.textLabel?.text = patternsIteam
      cell.imageView?.image = UIImage(named: patternsIteam)
        return cell
      }
  }
