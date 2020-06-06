class naman{

file{'/opt/naman':
ensure=>'present',
content=>'hello',
}
}

node "agent2.puppet.com"{ include naman }

