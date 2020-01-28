describe "Forms", :forms do
    it "login com sucesso" do
    visit "http://training-wheels-protocol.herokuapp.com/login"
    fill_in "username", with: "stark"
    fill_in "password", with: "jarvis!"
    click_button "Login"

    expect (find("#flash").visible?). to be true
    expect(find("#flash").text). to eql "Olá, Tony Stark. Você acessou a área logada!"
    end

end