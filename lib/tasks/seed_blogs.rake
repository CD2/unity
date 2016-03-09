task :gen_blogs do

    Blog.create!(name: 'Test Blog', body: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut dui augue. Duis quis facilisis nunc. Proin quis arcu egestas, volutpat mi id, accumsan nisl. Praesent urna diam, maximus sit amet sapien ac, tincidunt hendrerit diam. Maecenas elementum nibh ac dolor iaculis, ac gravida arcu dictum. Integer in mauris eleifend, blandit mauris egestas, hendrerit mauris. Aliquam ac ex sit amet risus sodales sollici-tudin at id leo.</p>
    <p>Quisque leo ligula, dapibus et suscipit quis, volutpat ut magna. Donec magna elit, mollis aliquam laoreet in, gravida nec ipsum. Maecenas sit amet urna enim. Maecenas risus turpis, dapibus elementum condimentum sed, tempor eu ipsum. Nullam nisl enim, faucibus sed tempus at, pulvinar et ante. Suspendisse sed hendrerit nibh. Nullam commodo gravida augue nec vehicula. Cras vitae magna porta.</p>')
    
 end