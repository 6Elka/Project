//
//  StorageManager.swift
//  ProjectForDanya
//
//  Created by Artem on 19/04/2023.
//

import Foundation
import CoreData

final class StorageManager {
    
    static let shared = StorageManager()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Order")
        container.loadPersistentStores { description, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    lazy var context = persistentContainer.viewContext
    
    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let error = error as NSError
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
    
    public func createOrderCell() {
        let order = OrderEntity(context: StorageManager.shared.context)
        order.addressOfOrder = "Принят заказ 405916 на сумму 524 р. Доставка по адеру Санкт-Петербург, Московское ш., д. 7, лит. А"
        order.dataOrder = "4 марта 23:00"
        order.descriptionOrder = "Подробности заказа"
        order.timerImage = "stopwatch"
        order.numberOfOrder = "Заказ 405916"
        
        StorageManager.shared.saveContext()
    }
    
    public func createSalesCell() {
        let sales = SalesEntity(context: StorageManager.shared.context)
        sales.name = "Новое"
        sales.dataOfPromo = "4 марта 23:00"
        sales.descriptionSales = "Скидка 10% на доставку любимых товаров в день покупки, 24-25 августа"
        sales.detailName = "Подробнее"
        sales.promotion = "Акция"
        sales.specialOffer = "Специальное предложение по вашей карте лояльности"
        
        StorageManager.shared.saveContext()
    }
    
    public func createProductCell() {
        let product = ProductEntity(context: StorageManager.shared.context)
        product.detailName = "Подробнее"
        product.promoName = "Акция"
        product.descriptionGif = "Дарим скидку на следующую покупку! -50% все! Действует 1 день."
        product.gifSales = "Дарим скидку -50%"
        product.imageProduct = "beauty"
        product.dataOfGif = "4 марта 23:00"
        
        StorageManager.shared.saveContext()
    }
    
    public func createPromoCell() {
        let promo = PromoEntity(context: StorageManager.shared.context)
        promo.promo = "Промокод"
        promo.dataOfPromo = "4 марта 23:00"
        promo.specialOffer = "Дарим промокод"
        promo.descriptionOffer = "Дарим промо-код на следующую покупку. Код действует до 24 мая. Успейте воспользоваться! =)"
        promo.imgURL = "doc.on.doc"
        promo.promoURL = "UR-29375"
        
        StorageManager.shared.saveContext()
    }
    
    public func createPaingCell() {
        let paing = PaingEntity(context: StorageManager.shared.context)
        paing.dataOfCheck = "4 марта 23:00"
        paing.descriptionOfOrder = "Подробности заказа"
        paing.getCheck = "Получен кассовый чек на сумму 186 р для заказа 405916"
        paing.openButton = "Открыть чек"
        
        StorageManager.shared.saveContext()
    }
    
    public func getAllOrder() -> [OrderEntity] {
        let fetchRequest: NSFetchRequest<OrderEntity> = OrderEntity.fetchRequest()
        do {
            let result = try StorageManager.shared.persistentContainer.viewContext.fetch(fetchRequest)
            return result
        } catch {
            print("Error get data")
            return []
        }
    }
    
    public func getAllSales() -> [SalesEntity] {
        let fetchRequest: NSFetchRequest<SalesEntity> = SalesEntity.fetchRequest()
        do {
            let result = try StorageManager.shared.persistentContainer.viewContext.fetch(fetchRequest)
            return result
        } catch {
            print("Error get data")
            return []
        }
    }
    
    public func getAllProduct() -> [ProductEntity] {
        let fetchRequest: NSFetchRequest<ProductEntity> = ProductEntity.fetchRequest()
        do {
            let result = try StorageManager.shared.persistentContainer.viewContext.fetch(fetchRequest)
            return result
        } catch {
            print("Error get data")
            return []
        }
    }
    
    public func getAllPromo() -> [PromoEntity] {
        let fetchRequest: NSFetchRequest<PromoEntity> = PromoEntity.fetchRequest()
        do {
            let result = try StorageManager.shared.persistentContainer.viewContext.fetch(fetchRequest)
            return result
        } catch {
            print("Error get data")
            return []
        }
    }
    
    public func getAllPaing() -> [PaingEntity] {
        let fetchRequest: NSFetchRequest<PaingEntity> = PaingEntity.fetchRequest()
        do {
            let result = try StorageManager.shared.persistentContainer.viewContext.fetch(fetchRequest)
            return result
        } catch {
            print("Error get data")
            return []
        }
    }
    
}
