---
title:
- SMT - Satisfiability modulo theories
author:
- Папазьян Евгений
theme:
- Copenhagen
---

# Введение
**Задача SMT (Satisfiability Modulo Theories)** - задача 
разрешимости набора логических формул по отношению к
набору _теорий_, описанных на языке логики первого порядка с равенством.

# Введение
SMT-LIB - язык и набор инструментов для описания и использования
различных SMT-теорий и SMT-решателей, которые мы рассмотрим позже.

# Введение
Логика первого порядка, на которой основываются теории, используемые
в SMT, включает в себя так называемые _сорты_ (sort), которые
являются аналогом _типа_.

Примерами сортов являются (название в формате SMT-LIB):

* Integer - целые числа
* BitVec n - битовый вектор размера n
* Array S1 S2 - массив, у которого индексы сорта S1, а элементы -
сорта S2
* Real - действительные числа

# SMT-теории
Примерами используемых в задачах SMT теорий являются:

* Теория целых чисел
* Теория действительных чисел
* Теория битовых векторов фиксированного размера
* Теория массивов

Рассмотрим интересующие нас теории.

# Теория битовых векторов фиксированного размера
Теория описывает сорт BitVec n и некоторый набор функций не нем.

BitVec n представляет из себя битовый вектор размера n.
Операции над BitVec включают в себя:

* add - сложение битовых векторов одинаковой длины
(при этом сложение может быть как знаковое так и беззнаковое)
* extract - извлечение подвектора
* concat - конкатенация двух векторов
и т.п.

# Теория массивов
Теория описывает сорт Array S1 S2 и две функции на нем:

* select - достать элемент из Array по индексу
* store - записать элемент в Array и вернуть новый Array

Набор аксиом, описывающий теорию, фиксирует поведение объектов
этого сорта так, чтобы они работали как массивы в нашем понимании.

# SMT-решатели
**SMT-решатель** - программа, получающая на вход задачу SMT в виде 
набора логических формул и возвращающая
набор значений свободных переменных, который
удовлетворяет всем заданным формулам, если такой существует,
или сигнал о невыполнимости в противном случае.

# SMT-решатели
Самые популярные SMT-решатели:

* Z3
* Boolector
* Yices

# Применение
SMT-решатели применяются в формальной верификации программ,
тестировании ПО на основе метода символьного выполнения и
синтеза фрагментов программ с помощью поиска по пространсву
всех возможных программ

