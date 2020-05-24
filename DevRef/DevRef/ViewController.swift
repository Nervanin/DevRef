//
//  ViewController.swift
//  DevRef
//
//  Created by Alex on 24.05.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSoure = self
    }

}
  let patternsName = ["Фабричный метод","Абстрактная фабрика","Строитель","Прототип","Одиночка","Адаптер","Мост","Компоновщик","Декоратор","Фасад","Легковес","Заместитель","Цепочка обязанностей","Команда","Итератор","Посредник","Снимок","Наблюдатель","Состояние","Стратегия","Шаблонный метод","Посетитель"]
extension UIViewController: UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patternsName.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath )
        
        _ = patternsName[indexPath.row]
        let patternsItem = patternsName[indexPath.row]

        cell.textLabel?.text = patternsItem
        cell.imageView?.image = UIImage(named: patternsItem)
        return cell
    }
    
    
}
