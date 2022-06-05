//
//  Lesson.swift
//  Quran
//
//  Created by Камиль Сулейманов on 05.02.2022.
//

import SwiftUI

struct Lesson {
    let id: Int
    let title: String
    let subtitle: String
    let view: AnyView
    var isComplete = false
}

struct LessonArray {
    let title: String
    var lessons: [Lesson]
}

var lessons = [
    LessonArray(title: "بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ", lessons: introduction),
    LessonArray(title: "Арабский алфавит", lessons: alphabetLessons),
    LessonArray(title: "Знаки не вошедшие в алфавит", lessons: otherSymbols),
    LessonArray(title: "Правила Тажвида", lessons: tajweedLessons),
    LessonArray(title: "Священный Коран", lessons: practice),
    LessonArray(title: "Обратная связь", lessons: about),
]

let introduction = [Lesson(id: 0, title: "Вступление", subtitle: "Почему нужно уметь читать Коран?", view: AnyView(ZeroLessonView(id: 0)))]
let alphabetLessons = [
    Lesson(id: 1, title: "Урок 1", subtitle: "Огласовки. Алиф ﺍ", view: AnyView(FirstLessonView(id: 1))),
    Lesson(id: 2, title: "Урок 2", subtitle: "Сукун. Ра ﺭ, За ﺯ", view: AnyView(SecondLessonView(id: 2))),
    Lesson(id: 3, title: "Урок 3", subtitle: "Мим ﻡ. Практика", view: AnyView(ThirdLesson(id: 3))),
    Lesson(id: 4, title: "Урок 4", subtitle: "Нун ﻥ, Та ﺕ. Практика", view: AnyView(FourthLesson(id: 4))),
    Lesson(id: 5, title: "Урок 5", subtitle: "Йа ﻱ, Ба ﺏ", view: AnyView(FifthLesson(id: 5))),
    Lesson(id: 6, title: "Урок 6", subtitle: "Кяф ﻙ, Лям ﻝ, Вав ﻭ", view: AnyView(SixthLesson(id: 6))),
    Lesson(id: 7, title: "Урок 7", subtitle: "ha ﻩ, Фа ﻑ, Каф ﻕ", view: AnyView(SeventhLesson(id: 7))),
    Lesson(id: 8, title: "Урок 8", subtitle: "Шин ﺵ, Син ﺱ, Са ﺙ", view: AnyView(EighthLesson(id: 8))),
    Lesson(id: 9, title: "Урок 9", subtitle: "Сад ﺹ, Та ﻁ, Джим ﺝ", view: AnyView(NinthLessonView(id: 9))),
    Lesson(id: 10, title: "Урок 10", subtitle: "Ха ﺥ, Ха ﺡ,  Гъайн ﻍ", view: AnyView(TenthLesson(id: 10))),
    Lesson(id: 11, title: "Урок 11", subtitle: "Гайн ﻉ, Даль ﺩ,  Дад ض", view: AnyView(EleventhLessonView(id: 11))),
    Lesson(id: 12, title: "Урок 12", subtitle: "Заль ذ, За ظ", view: AnyView(TwelfthLessonView(id: 12))),
]
let otherSymbols = [
    Lesson(id: 13, title: "Урок 1", subtitle: "Мадда - удлинение", view: AnyView(ThirteenthLessonView(id: 13))),
    Lesson(id: 14, title: "Урок 2", subtitle: "Ташдид - удвоенние", view: AnyView(FourteenLesssonView(id: 14))),
    Lesson(id: 15, title: "Урок 3", subtitle: "Окончания: Танвин, Та марбута.", view: AnyView(FifteenLessonView(id: 15))),
    Lesson(id: 16, title: "Урок 4", subtitle: "Хамза. Васлирование. Лям-алиф", view: AnyView(SixteenLessonView(id: 16))),
]
let tajweedLessons: [Lesson] = [
    Lesson(id: 17, title: "Урок 1", subtitle: "Солнечные и лунные согласные.", view: AnyView(tajweeddOneView(id: 17))),
    Lesson(id: 18, title: "Урок 2", subtitle: "Изхар. Идгам.", view: AnyView(tajweeddTwoView(id: 18))),
    Lesson(id: 19, title: "Урок 3", subtitle: "Икляб. Ихфа.", view: AnyView(tajweeddThreeView(id: 19))),
    Lesson(id: 20, title: "Урок 4", subtitle: "Три правила для Мима с сукуном", view: AnyView(tajweeddFourView(id: 20))),
    Lesson(id: 21, title: "Урок 5", subtitle: "Практика. Что дальше?", view: AnyView(tajweeddFiveView(id: 21))),
]
let practice: [Lesson] = [
    Lesson(id: 22, title: "الفاتحة", subtitle: "Сура №1 - Открывающая Коран", view: AnyView(SurahAlFatiha())),
    Lesson(id: 23, title: "الإخلاص", subtitle: "Сура №112 - Очищение", view: AnyView(SurrahIhlas())),
    Lesson(id: 24, title: "الفلق", subtitle: "Сура №113 - Рассвет", view: AnyView(SurrahFalak())),
    Lesson(id: 25, title: "الناس", subtitle: "Сура №114 - Люди", view: AnyView(SurrahNas())),
]
let about = [Lesson(id: 22, title: "О приложении", subtitle: "Заметили ошибку - напишите", view: AnyView(MailSender()))]

