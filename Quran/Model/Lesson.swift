//
//  Lesson.swift
//  Quran
//
//  Created by Камиль Сулейманов on 05.02.2022.
//

import SwiftUI

struct Lesson: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let view: AnyView
}

let lessonsArray: [Lesson] = [
    Lesson(title: "Вступление", subtitle: "Почему нужно уметь читать Коран?", view: AnyView(ZeroLessonView())),
    Lesson(title: "Урок 1", subtitle: "Огласовки. Алиф ﺍ", view: AnyView(FirstLessonView())),
    Lesson(title: "Урок 2", subtitle: "Сукун. Ра ﺭ, За ﺯ", view: AnyView(SecondLessonView())),
    Lesson(title: "Урок 3", subtitle: "Мим ﻡ. Практика", view: AnyView(ThirdLesson())),
    Lesson(title: "Урок 4", subtitle: "Нун ﻥ, Та ﺕ. Практика", view: AnyView(FourthLesson())),
    Lesson(title: "Урок 5", subtitle: "Йа ﻱ, Ба ﺏ", view: AnyView(FifthLesson())),
    Lesson(title: "Урок 6", subtitle: "Кяф ﻙ, Лям ﻝ, Вав ﻭ", view: AnyView(SixthLesson())),
    Lesson(title: "Урок 7", subtitle: "ha ﻩ, Фа ﻑ, Каф ﻕ", view: AnyView(SeventhLesson())),
    Lesson(title: "Урок 8", subtitle: "Шин ﺵ, Син ﺱ, Са ﺙ", view: AnyView(EighthLesson())),
    Lesson(title: "Урок 9", subtitle: "Сад ﺹ, Та ﻁ, Джим ﺝ", view: AnyView(NinthLessonView())),
    Lesson(title: "Урок 10", subtitle: "Ха ﺥ, Ха ﺡ,  Гъайн ﻍ", view: AnyView(TenthLesson())),
    Lesson(title: "Урок 11", subtitle: "Гайн ﻉ, Даль ﺩ,  Дад ض", view: AnyView(EleventhLessonView())),
    Lesson(title: "Урок 12", subtitle: "Заль ذ, За ظ", view: AnyView(TwelfthLessonView())),
    Lesson(title: "Урок 1", subtitle: "Мадда - удлинение", view: AnyView(ThirteenthLessonView())),
    Lesson(title: "Урок 2", subtitle: "Ташдид - удвоенние", view: AnyView(FourteenLesssonView())),
    Lesson(title: "Урок 3", subtitle: "Окончания: Танвин, Та марбута.", view: AnyView(FifteenLessonView())),
    Lesson(title: "Урок 4", subtitle: "Хамза. Васлирование. Лям-алиф", view: AnyView(SixteenLessonView())),
    Lesson(title: "Урок 1", subtitle: "Солнечные и лунные согласные.", view: AnyView(tajweeddOneView())),
    Lesson(title: "Урок 2", subtitle: "Изхар. Идгам.", view: AnyView(tajweeddTwoView())),
    Lesson(title: "Урок 3", subtitle: "Икляб. Ихфа.", view: AnyView(tajweeddThreeView())),
    Lesson(title: "Урок 4", subtitle: "Три правила для Мима с сукуном", view: AnyView(tajweeddFourView())),
    Lesson(title: "Урок 5", subtitle: "Практика. Что дальше?", view: AnyView(tajweeddFiveView())),
    Lesson(title: "О приложении", subtitle: "Заметили ошибку - напишите", view: AnyView(MailSender())),
]


