trigger RKEmailCheck on Contact (before insert, before update) {

for (Contact continloop:trigger.new)

        {
        if(continloop.Email == 'rakeshistom@gmail.com')
            {
            System.debug('Appears');
                continloop.Email.addError('Cannot have email rakeshistom@gmail.com');
            }
        }
}