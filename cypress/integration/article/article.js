Given('I open Conduit login page', () => {
    cy.visit('https://demo.productionready.io/#/login')
  });
  
  When('I type in', (datatable) => { 
    datatable.hashes().forEach(element => {
        cy.get('input[type="email"]').type(element.username)
        cy.get('input[type="password"]').type(element.password)
    })
  })
  When('I create article', (datatable) => { 
    datatable.hashes().forEach(element => {
        if(!element.ArticleTitle){
        cy.get(`input[placeholder="What's this article about?"]`).type(element.articleDesc)
        cy.get('body > div > div > div > div > div > div > form > fieldset > fieldset:nth-child(3) > textarea').type(element.ArticleBody)
        cy.get('input[placeholder="Enter tags"]').type(element.tags)
    }
    else if(!element.articleDesc){
        cy.get('input[placeholder="Article Title"]').type(element.ArticleTitle)
        cy.get('body > div > div > div > div > div > div > form > fieldset > fieldset:nth-child(3) > textarea').type(element.ArticleBody)
        cy.get('input[placeholder="Enter tags"]').type(element.tags)
    }
    else if(!element.ArticleBody){
        cy.get('input[placeholder="Article Title"]').type(element.ArticleTitle)
        cy.get(`input[placeholder="What's this article about?"]`).type(element.articleDesc)
        cy.get('input[placeholder="Enter tags"]').type(element.tags)
    }
    else if(!element.tags){
        cy.get('input[placeholder="Article Title"]').type(element.ArticleTitle)
        cy.get(`input[placeholder="What's this article about?"]`).type(element.articleDesc)
        cy.get('body > div > div > div > div > div > div > form > fieldset > fieldset:nth-child(3) > textarea').type(element.ArticleBody)
    }
    else{ 
        cy.get('input[placeholder="Article Title"]').type(element.ArticleTitle)
        cy.get(`input[placeholder="What's this article about?"]`).type(element.articleDesc)
        cy.get(`body > div > div > div > div > div > div > form > fieldset > fieldset:nth-child(3) > textarea`).type(element.ArticleBody)
        cy.get('input[placeholder="Enter tags"]').type(element.tags)

    }
})
  })
  
  When('I click on {string} button', (content) => {
  if(content=="Sign in"){
    cy.get('.btn').contains("Sign in").should('be.visible').click()}

if(content=="Publish Article"){
        cy.get("body > div > div > div > div > div > div > form > fieldset > button").should('be.visible').click()}
if(content=="Edit Article"){
    cy.get("body > div > div > div > div.banner > div > article-actions > article-meta > div > ng-transclude > span:nth-child(1) > a").click()}
    if(content=="Delete Article"){
        cy.get('.btn').contains("Delete Article").click()
    }
    
  });
  when ('I click on {string} text',(content)=>{
     if(content =="New Article"){
        cy.get('.nav-link').contains("New Article").should('be.visible').click()
    }
  });
  
  Then('{string} should be shown', (content) => {
    if(content=="Publish Article"){
        cy.get("body > div > div > div > div > div > div > form > fieldset > button",{timeout:3000}).should('be.visible')
       }
    if(content == "desc"){
        cy.get(`input[placeholder="What's this article about?"]`).should('have.value','desc')
       }
       else{
   cy.contains(content, {timeout:4000}).should('be.visible')
       }

  })

  When('I edit article', (datatable) => { 
    datatable.hashes().forEach(element => {
        if(element.articleDesc){
        cy.get(`input[placeholder="What's this article about?"]`).clear().type(element.articleDesc)
    }
    if(element.ArticleBody){
        cy.get('body > div > div > div > div > div > div > form > fieldset > fieldset:nth-child(3) > textarea').type(element.ArticleBody)
    }
    if(element.ArticleTitle){
        cy.get('input[placeholder="Article Title"]').type(element.ArticleTitle)
    }
    if(element.ArticleTitle==""){
        cy.get('input[placeholder="Article Title"]').clear();
    }
    if(element.articleDesc==""){
        cy.get(`input[placeholder="What's this article about?"]`).clear();
    }
    if(element.ArticleBody==""){
        cy.get('body > div > div > div > div > div > div > form > fieldset > fieldset:nth-child(3) > textarea').clear();
    }
   
})
  })