const {Builder, By, Key, until} = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');

(async function demoqaFormTest() {
    let driver = await new Builder().forBrowser('chrome').build();
    try {
        await driver.get('https://demoqa.com/automation-practice-form');

        // Удалим рекламу
        await driver.executeScript("document.querySelectorAll('#fixedban, .advertisement').forEach(el => el.remove());");

        await driver.findElement(By.id('firstName')).sendKeys('Иван');
        await driver.findElement(By.id('lastName')).sendKeys('Иванов');
        await driver.findElement(By.id('userEmail')).sendKeys('ivan@test.ru');
        await driver.findElement(By.css('label[for="gender-radio-1"]')).click();
        await driver.findElement(By.id('userNumber')).sendKeys('9001234567');

        // Дата рождения
        await driver.findElement(By.id('dateOfBirthInput')).click();
        await driver.findElement(By.css('.react-datepicker__month-select')).sendKeys('August');
        await driver.findElement(By.css('.react-datepicker__year-select')).sendKeys('1995');
        await driver.findElement(By.css('.react-datepicker__day--015')).click();

        await driver.findElement(By.id('subjectsInput')).sendKeys('Maths', Key.ENTER);
        await driver.findElement(By.css('label[for="hobbies-checkbox-2"]')).click();
        await driver.findElement(By.css('label[for="hobbies-checkbox-3"]')).click();

        await driver.findElement(By.id('uploadPicture')).sendKeys(require('path').resolve('./avatar.jpg'));
        await driver.findElement(By.id('currentAddress')).sendKeys('ул. Тестовая, д. 1');

        await driver.findElement(By.id('state')).click();
        await driver.findElement(By.id('react-select-3-option-0')).click(); // NCR
        await driver.findElement(By.id('city')).click();
        await driver.findElement(By.id('react-select-4-option-0')).click(); // Delhi

        await driver.findElement(By.id('submit')).click();

        await driver.wait(until.elementLocated(By.css('.modal-content')), 5000);
        console.log('✅ Модальное окно с результатами найдено');
    } finally {
        await driver.quit();
    }
})();
