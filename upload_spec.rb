describe 'Upload', :upload do
    before(:each) do
        visit "http://training-wheels-protocol.herokuapp.com/upload"
        @texto = Dir.pwd + '/spec/fixture/texto.txt'
        @img = Dir.pwd + '/spec/fixture/118401.png'
    end
    it "upload com arquivo texto" do
        attach_file('file-upload',@texto)
    end
    after(:each) do
        sleep 3
    end
end