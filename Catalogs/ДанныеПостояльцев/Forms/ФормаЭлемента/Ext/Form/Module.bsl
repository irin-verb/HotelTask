﻿
&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	Если ТекущийОбъект.Фамилия <> "" 
		И ТекущийОбъект.Имя <> ""  
		И ТекущийОбъект.Отчество <> ""  
	Тогда ТекущийОбъект.Наименование = 
	    ТекущийОбъект.Фамилия + " " +
		Лев(ТекущийОбъект.Имя,1) + "." + 
		Лев(ТекущийОбъект.Отчество,1) + "."	
	КонецЕсли;
КонецПроцедуры


&НаКлиенте
Процедура ФамилияПриИзменении(Элемент)
	ОбновитьФИО();
КонецПроцедуры


&НаКлиенте
Процедура ИмяПриИзменении(Элемент)
	ОбновитьФИО();
КонецПроцедуры


&НаКлиенте
Процедура ОтчествоПриИзменении(Элемент)
	ОбновитьФИО();
КонецПроцедуры 


&НаСервере
Процедура ОбновитьФИО()
	Объект.Наименование =  
		Строка(Строка(Объект.Фамилия) + " " +
		Лев(Объект.Имя,1) + "." + 
		Лев(Объект.Отчество,1) + ".");	
КонецПроцедуры 

