describe "Script 1" do
it "visitar a pagina" do
    visit "http://training-wheels-protocol.herokuapp.com/"
    expect(page.title).to eql "training wheels Protocol"
    end
end