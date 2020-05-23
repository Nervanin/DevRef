//
//  ViewController.swift
//  DevRef
//
//  Created by Alex on 22.05.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    let patternsName = ["Фабричный метод","Абстрактная фабрика","Строитель","Прототип","Одиночка","Адаптер","Мост","Компоновщик","Декоратор","Фасад","Легковес","Заместитель","Цепочка обязанностей","Команда","Итератор","Посредник","Снимок","Наблюдатель","Состояние","Стратегия","Шаблонный метод","Посетитель"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patternsName.count
      }
    //this method allows you to display the number of rows
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath )
      let patternsIteam = patternsName[indexPath.row]
        
        cell.textLabel?.text = patternsIteam
        cell.imageView?.image = UIImage(named: patternsIteam)
//        cell.imageView?.layer.cornerRadius = 100 / 100
//        cell.imageView?.clipsToBounds = true
        return cell
      }
    //this method allows you to work with a cell

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    //this method allows you to adjust the height of the line
    }
    
}

