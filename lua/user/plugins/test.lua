require('nvim-test').setup {
    term = 'toggleterm',
    runners = {
        ruby = 'nvim-test.runners.rspec'
    }
}

require('nvim-test.runners.rspec'):setup {
    command = 'bundle exec rspec'
}

