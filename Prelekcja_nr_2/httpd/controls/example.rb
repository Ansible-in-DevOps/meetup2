# copyright: 2018, The Authors

title "Apache httpd"

control 'httpd-1.0' do
  title 'Verify example website development'
  impact 1.0

  describe package('httpd') do
    it { should be_installed }
  end

  describe service('httpd') do
    it { should be_running }
    it { should be_enabled }
  end

  describe file('/var/www/html/index.html') do
    its('content') { should match /Coming Soon!/ }
  end
end

control 'httpd-2.0' do
  title 'Check security config'
  impact 0.5

  describe apache_conf do
    its('ServerTokens') {should cmp 'Prod'}
  end
  
  describe apache_conf do
    its('ServerSignature') {should cmp 'Off'}
  end
end
