//
//  ViewController.swift
//  DevRef
//
//  Created by Alex on 24.05.2020.
//  Copyright © 2020 Alex. All rights reserved.
//
import UIKit
import SnapKit

class ViewController: UIViewController{
    
    let patterns = [Pattern(title: "Порождающие",
                                 names: ["Фабричный метод","Абстрактная фабрика","Строитель","Прототип","Одиночка"]),
                        Pattern(title: "Структурные",
                                 names:["Адаптер","Мост","Компоновщик","Декоратор","Фасад","Легковес","Заместитель"]),
                        Pattern(title: "Поведенческие",
                                 names:  ["Цепочка обязанностей","Команда","Итератор","Посредник","Снимок","Наблюдатель","Состояние","Стратегия","Шаблонный метод","Посетитель"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

  extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patterns.map{$0}[section].names.count
    }
    
    func numberOfSections(in: UITableView) -> Int {
        return patterns.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return patterns.map{$0}[section].title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath )
        let patternsIteam = patterns.map{$0}[indexPath.section].names[indexPath.row]
        cell.textLabel?.text = patternsIteam
        cell.imageView?.image = UIImage(named: patternsIteam)
        return cell
        
    }
}
