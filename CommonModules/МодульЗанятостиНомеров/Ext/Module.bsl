﻿
Функция НомерЗаселенБезПроверкиЗаселения(НомерГостиницы, НачалоПериода, КонецПериода) Экспорт
	//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Поселение.НомерГостиницы КАК НомерГостиницы
		|ИЗ
		|	Документ.Поселение КАК Поселение
		|ГДЕ
		|	(Поселение.КонецПериода > &НачалоПериода
		|				И Поселение.КонецПериода <= &КонецПериода
		|			ИЛИ Поселение.НачалоПериода >= &НачалоПериода
		|				И Поселение.НачалоПериода < &КонецПериода)
		|	И Поселение.НомерГостиницы.Ссылка = &НомерГостиницы";
	
	Запрос.УстановитьПараметр("КонецПериода", КонецПериода);
	Запрос.УстановитьПараметр("НачалоПериода", НачалоПериода);
	Запрос.УстановитьПараметр("НомерГостиницы", НомерГостиницы);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Возврат ВыборкаДетальныеЗаписи.Количество() <> 0;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА	
КонецФункции 


Функция НомерЗаселен(ТекущееПоселение, НомерГостиницы, НачалоПериода, КонецПериода) Экспорт
	//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Поселение.НомерГостиницы КАК НомерГостиницы
		|ИЗ
		|	Документ.Поселение КАК Поселение
		|ГДЕ
		|	(Поселение.КонецПериода > &НачалоПериода
		|				И Поселение.КонецПериода <= &КонецПериода
		|			ИЛИ Поселение.НачалоПериода >= &НачалоПериода
		|				И Поселение.НачалоПериода < &КонецПериода)
		|	И Поселение.НомерГостиницы.Ссылка = &НомерГостиницы
		|	И Поселение.Ссылка <> &ТекущееПоселение";
	
	Запрос.УстановитьПараметр("КонецПериода", КонецПериода);
	Запрос.УстановитьПараметр("НачалоПериода", НачалоПериода);
	Запрос.УстановитьПараметр("НомерГостиницы", НомерГостиницы);
	Запрос.УстановитьПараметр("ТекущееПоселение", ТекущееПоселение);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Возврат ВыборкаДетальныеЗаписи.Количество() <> 0;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
КонецФункции 


Функция НомерЗабронированБезПроверкиБронирования(НомерГостиницы, НачалоПериода, КонецПериода) Экспорт
	//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Бронирование.НомерГостиницы КАК НомерГостиницы
		|ИЗ
		|	Документ.Бронирование КАК Бронирование
		|ГДЕ
		|	(Бронирование.КонецПериода > &НачалоПериода
		|				И Бронирование.КонецПериода <= &КонецПериода
		|			ИЛИ Бронирование.НачалоПериода >= &НачалоПериода
		|				И Бронирование.НачалоПериода < &КонецПериода)
		|	И Бронирование.НомерГостиницы.Ссылка = &НомерГостиницы";
	
	Запрос.УстановитьПараметр("КонецПериода", КонецПериода);
	Запрос.УстановитьПараметр("НачалоПериода", НачалоПериода);
	Запрос.УстановитьПараметр("НомерГостиницы", НомерГостиницы);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Возврат ВыборкаДетальныеЗаписи.Количество() <> 0;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
КонецФункции


Функция НомерЗабронирован(ТекущееБронирование, НомерГостиницы, НачалоПериода, КонецПериода) Экспорт
	//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	Бронирование.НомерГостиницы КАК НомерГостиницы
		|ИЗ
		|	Документ.Бронирование КАК Бронирование
		|ГДЕ
		|	(Бронирование.КонецПериода > &НачалоПериода
		|				И Бронирование.КонецПериода <= &КонецПериода
		|			ИЛИ Бронирование.НачалоПериода >= &НачалоПериода
		|				И Бронирование.НачалоПериода < &КонецПериода)
		|	И Бронирование.НомерГостиницы.Ссылка = &НомерГостиницы
		|	И Бронирование.Ссылка <> &ТекущееБронирование";
	
	Запрос.УстановитьПараметр("КонецПериода", КонецПериода);
	Запрос.УстановитьПараметр("НачалоПериода", НачалоПериода);
	Запрос.УстановитьПараметр("НомерГостиницы", НомерГостиницы);
	Запрос.УстановитьПараметр("ТекущееБронирование", ТекущееБронирование);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Возврат ВыборкаДетальныеЗаписи.Количество() <> 0;
	
	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
КонецФункции

