require 'spec_helper'

#gitがインストールされていること
describe command('git --version') do
  its(:stdout) { should match /git version 2.7.0/ }
end

# amon2-appのディレクトリがあること
#describe file('/root/eventboard') do
#  it { should be_directory }
#end

# perl 5.20.2 が入っていること
describe command("bash -lc 'perl -v'") do
  its(:stdout) { should contain('5.20.2') }
end

# nginxが起動していること
#describe process('xxx') do
# its(:args) { should match /xxx/ }
#end

# なんかの設定ファイルが、、、とか
