Given('I open signup page', () => {
    cy.visit("https://demo.productionready.io/#/register")
  });
  
  When('I type in', (datatable) => { 
    datatable.hashes().forEach(element => {
      if(element.Email== ""){
        cy.get('input[type="text"]').type(element.Username)
        cy.get('input[type="password"]').type(element.Password)}
      else if(element.Password== ""){
          cy.get('input[type="text"]').type(element.Username)
          cy.get('input[type="email"]').type(element.Email)}
      else if(element.Username== ""){
        cy.get('input[type="email"]').type(element.Email)
        cy.get('input[type="password"]').type(element.Password)}

      else{ cy.get('input[type="text"]').type(element.Username)
         cy.get('input[type="email"]').type(element.Email)
         cy.get('input[type="password"]').type(element.Password)}
    })
  })
  
  When('I click on Sign up button', () => {
    cy.get('.btn').contains('Sign up').should('be.visible').click()
  });
  
  Then('{string} should be shown', (content) => {
   cy.contains(content, {timeout:10000}).should('be.visible')

  })
   
 