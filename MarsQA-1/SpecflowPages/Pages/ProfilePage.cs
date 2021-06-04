using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MarsQA_1.Helpers;
using OpenQA.Selenium;
using System.Threading;
using NUnit.Framework;

namespace MarsQA_1.SpecflowPages.Pages
{
    class ProfilePage
    {
        //object
        private static IWebElement languageTab => Driver.driver.FindElement(By.XPath("//*[@id='account-profile-section']/div/section[2]/div/div/div/div[3]/form/div[1]/a[1]"));
        private static IWebElement addNewButton => Driver.driver.FindElement(By.XPath("//*[@id='account-profile-section']/div/section[2]/div/div/div/div[3]/form/div[2]/div/div[2]/div/table/thead/tr/th[3]/div"));
        private static IWebElement inputLanguage => Driver.driver.FindElement(By.XPath("//*[@name='name']"));

        private static IWebElement dropdownLevel => Driver.driver.FindElement(By.XPath("//*[@name='level']"));

        private static IWebElement addlanguage => Driver.driver.FindElement(By.XPath("//*[@id='account-profile-section']/div/section[2]/div/div/div/div[3]/form/div[2]/div/div[2]/div/div/div[3]/input[1]"));

        private static IWebElement saveMessage => Driver.driver.FindElement(By.XPath("//*[@id='account-profile-section']"));
        private static IWebElement updateLanguagePencilButton => Driver.driver.FindElement(By.XPath("//*[@id='account-profile-section']/div/section[2]/div/div/div/div[3]/form/div[2]/div/div[2]/div/table/tbody/tr/td[3]/span[1]/i"));
        private static IWebElement updateButton => Driver.driver.FindElement(By.XPath("//*[@value='Update']"));
        private static IWebElement deleteButton => Driver.driver.FindElement(By.XPath("//div[@data-tab='first']/div/div[2]/div/table/tbody/tr[1]/td[3]/span[2]"));
        private static IWebElement languageText => Driver.driver.FindElement(By.XPath("//div[@data-tab='first']/div/div[2]/div/table/tbody/tr[1]/td[1]"));

        private static IWebElement levelText => Driver.driver.FindElement(By.XPath("//div[@data-tab='first']/div/div[2]/div/table/tbody/tr[1]/td[2]"));

        private static IWebElement dropdownAvailability => Driver.driver.FindElement(By.XPath("//*[@name='availabiltyType']"));
        private static IWebElement dropdownHours => Driver.driver.FindElement(By.XPath("//*[@name='availabiltyHour']"));
        private static IWebElement dropdownEarnTarget => Driver.driver.FindElement(By.XPath("//*[@name='availabiltyTarget']"));

        private static IWebElement availibilityEditButton => Driver.driver.FindElement(By.XPath("//div[@class='extra content']/div/div[2]/div/span/i"));

        private static IWebElement availibilityHoursEditButton => Driver.driver.FindElement(By.XPath("//div[@class='extra content']/div/div[3]/div/span/i"));

        private static IWebElement earnTargetEditButton => Driver.driver.FindElement(By.XPath("//div[@class='extra content']/div/div[4]/div/span/i"));

        private static IWebElement typeText => Driver.driver.FindElement(By.XPath("//div[@class='extra content']/div/div[2]/div/span"));

        private static IWebElement hoursText => Driver.driver.FindElement(By.XPath("//div[@class='extra content']/div/div[3]/div/span"));

        private static IWebElement targetText => Driver.driver.FindElement(By.XPath("//div[@class='extra content']/div/div[4]/div/span"));

        private static IWebElement descriptionEditButton => Driver.driver.FindElement(By.XPath("(//div[@class='content'])[4]/div/h3/span/i"));

        private static IWebElement descriptionInput => Driver.driver.FindElement(By.XPath("//*[@name='value']"));

        private static IWebElement descriptionSave => Driver.driver.FindElement(By.XPath("(//button[@class='ui teal button'])[2]"));

        private static IWebElement descriptionText => Driver.driver.FindElement(By.XPath("(//div[@class='content'])[4]/div/span"));



        public static void selectLaungaueTab()
        {
            Thread.Sleep(1000);
            languageTab.Click();
        }
        public static void clickAddButton()
        {
            addNewButton.Click();
        }

        public static void enterLanguage(string language)
        {
            inputLanguage.SendKeys(language);

        }

        public static void selectLevel(string level)
        {
            dropdownLevel.SendKeys(level);
        }

        public static void addButton()
        {
            addlanguage.Click();
        }

        public static void displayMessage(string message)
        {
            //saveMessage.Text;
        }

        public static void clickOnPencilUpdateLanguage()
        {
            Thread.Sleep(1000);
            updateLanguagePencilButton.Click();
        }

        public static void updateLanguage(string language)
        {
            inputLanguage.Clear();
            inputLanguage.SendKeys(language);

        }

        public static void updateLevel(string level)
        {
            dropdownLevel.SendKeys(level);
        }

        public static void clickOnUpdateButton()
        {
            updateButton.Click();
            Thread.Sleep(1000);
        }

        public static void clickOnDeleteButton()
        {
            Thread.Sleep(1000);
            deleteButton.Click();
        }

        public static void viewLanguageDetails(String language, String lvl)
        {
            Thread.Sleep(2000);
            Assert.AreEqual(language, languageText.Text);
            Assert.AreEqual(lvl, levelText.Text);
        }

        public static void selectAvailibility(String availibility)
        {
            availibilityEditButton.Click();
            Thread.Sleep(1000);
            dropdownAvailability.SendKeys(availibility);
        }

        public static void selectWorkingHours(String hours)
        {
            Thread.Sleep(1000);
            availibilityHoursEditButton.Click();
            Thread.Sleep(1000);
            dropdownHours.SendKeys(hours);
        }

        public static void selectTarget(String target)
        {
            Thread.Sleep(1000);
            earnTargetEditButton.Click();
            Thread.Sleep(1000);
            dropdownEarnTarget.SendKeys(target);
        }

        public static void enterDescription(String description)
        {
            descriptionEditButton.Click();
            descriptionInput.Clear();
            descriptionInput.SendKeys(description);
        }

        public static void clickDescriptionSave()
        {
            descriptionSave.Click();
        }

        public static void verifyPersonalDetails(String type, String hours, String target, String des)
        {
            Assert.AreEqual(type, typeText.Text);
            Assert.AreEqual(hours, hoursText.Text);
            Assert.AreEqual(target, targetText.Text);
            Assert.AreEqual(des, descriptionText.Text);

        }


    }
}
