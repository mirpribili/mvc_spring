# MVC -  Model, View, Controller
<!--![Иллюстрация к проекту](https://github.com/mirpribili/spring_course/blob/master/resources/spring_mvc.jpg)-->
![Иллюстрация к проекту](https://raw.githubusercontent.com/mirpribili/spring_course/master/resources/spring_mvc.jpg)
- Front Controller также называется DispatcherServlet. 
  - является частью Spring
- пишем сами
  - Controller - центр управления, мозг Spring MVC приложения.
  - Model - контейнер для хранения данных.
  - View - страница отображения (часто html)
    - Создаем с помощью JSP - Java Server Page.
## Состав Spring MVC приложения:
- Конфигурация Spring
  - XML
  - java код для конфигурации 
- Описание Spring bean
  - не только аннотации компонентов
    - другие
- Web страницы
###  Конфигурация Spring
1. Создаем maven проект, используя maven-archetype-webapp
2. Добавляем зависимости в pom.xml файл
3. сервер Tomcat связываем со средой разработки
4. добавляем папки\пакеты в иерархию классов
5. конфигурируем web.xml
6. 
# Добавим форму с вводом имени Работника и приветствием его.
- get 
# MODEL_first_use__commit
- контейнер для хранения данных. 
- В Controller можно добавлять данные
- передали через атрибут
# @RequestParam__commit
- При работе с формами, связывает поле формы с парам. метода Controller
# @RequestMapping__&__Ambiguous mapping__commit
- не только для методов, но и для самого класса Controller
- связывает указанный для класса url со всеми его методами
## Ambiguous mapping (двусмысленный)
-  двух разных контроллерах один и тот же @RequestMapping приведет к ошибке 
# View->Model->View__commit
- model.addAttribute("employee", new Employee());
- Во view обратились к значению по имени атрибута и его полю
  - ${employee_attribute.salary}
- при работе с формами, 
  - аннотация @ModelAttribute в параметре метода Controller-а
    - дает доступ к конкретному атрибуту Модели
# Forms: DropDown list in form Spring MVC __commit
# Forms: radiobuttons __commit
# Forms: checkbox__commit
# Forms: Validations: @Size, @NotEmpty, @NotBlank __commit
- Java Standard Bean Validation API - это **спецификация**, которая описывает правила валидации.
- Hibernate Validator - реализация правил, описанных в Java Standard Bean Validation API
# Forms: Validations: @Min, @Max, @Pattern __commit
# Forms: Create my validations __commit
#
#
#
#
#
#
#
#
#
#
#
#
#
#
> 
>

#