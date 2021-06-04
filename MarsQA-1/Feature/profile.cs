using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using MarsQA_1.SpecflowPages.Pages;

namespace MarsQA_1.Feature
{
    [Binding]
    class profile
    {
        private readonly ScenarioContext _scenarioContext;

        public profile(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [When(@"I select languages tab")]
        public void WhenISelectLanguagesTab() => ProfilePage.selectLaungaueTab();

        [When(@"I click on add button")]
        public void WhenIClickOnAddButton()
        {
            SpecflowPages.Pages.ProfilePage.clickAddButton();
        }

        [When(@"I enter language as ""(.*)""")]
        public void WhenIEnterLanguageAs(string enlish0)
        {
            SpecflowPages.Pages.ProfilePage.enterLanguage(enlish0);
        }
        [When(@"I select my level ""(.*)""")]
        public void WhenISelectMyLevel(string fluent0)
        {
            SpecflowPages.Pages.ProfilePage.selectLevel(fluent0);
        }

        [When(@"I click on add to save my language details")]
        public void WhenIClickOnAddToSaveMyLanguageDetails()
        {
            SpecflowPages.Pages.ProfilePage.addButton();

        }

        [When(@"I click on pencil icon to update languages entry")]
        public void WhenIClickOnPencilIconToUpdateLanguagesEntry()
        {
            SpecflowPages.Pages.ProfilePage.clickOnPencilUpdateLanguage();
        }

        [When(@"I enter language ""(.*)""")]
        public void WhenIEnterLanguage(string p0)
        {
            SpecflowPages.Pages.ProfilePage.updateLanguage(p0);
        }

        [When(@"I select level ""(.*)""")]
        public void WhenISelectLevel(string basic0)
        {
            SpecflowPages.Pages.ProfilePage.updateLevel(basic0);
        }

        [When(@"I click on update button")]
        public void WhenIClickOnUpdateButton()
        {
            SpecflowPages.Pages.ProfilePage.clickOnUpdateButton();
        }

        [When(@"I click on delete button for language entry")]
        public void WhenIClickOnDeleteButtonForLanguageEntry()
        {
            SpecflowPages.Pages.ProfilePage.clickOnDeleteButton();
        }

        [Then(@"I should see message ""(.*)""")]
        public void ThenIShouldSeeMessage(string p0)
        {
            SpecflowPages.Pages.ProfilePage.displayMessage(p0);
        }

        [Then(@"I should be able to view my language details ""(.*)"" and ""(.*)""")]
        public void ThenIShouldBeAbleToViewMyLanguageDetailsAsEntered(String lang, String level)
        {
            SpecflowPages.Pages.ProfilePage.viewLanguageDetails(lang, level);
        }

        [When(@"I select my Availability '(.*)'")]
        public void WhenISelectMyAvailability(string availability0)
        {
            SpecflowPages.Pages.ProfilePage.selectAvailibility(availability0);
        }

        [When(@"I select my working hours ""(.*)""")]
        public void GivenISelectMyWorkingHours(string hours0)
        {
            SpecflowPages.Pages.ProfilePage.selectWorkingHours(hours0);
        }

        [When(@"I select my earn target ""(.*)""")]
        public void GivenISelectMyEarnTarget(string earnTarget0)
        {
            SpecflowPages.Pages.ProfilePage.selectTarget(earnTarget0);
        }

        [When(@"I enter my description ""(.*)""")]
        public void GivenIEnterMyDescription(string description0)
        {
            SpecflowPages.Pages.ProfilePage.enterDescription(description0);
        }

        [When(@"I save the details")]
        public void GivenISaveTheDetails()
        {
            SpecflowPages.Pages.ProfilePage.clickDescriptionSave();
        }

        [Then(@"I should be able to view my personal details ""(.*)"",""(.*)"",""(.*)"",""(.*)""")]
        public void ThenIShouldBeAbleToViewMyPersonalDetails(string type, string hours, string target, string description)
        {
            SpecflowPages.Pages.ProfilePage.verifyPersonalDetails(type, hours, target, description);
        }

    }
}
