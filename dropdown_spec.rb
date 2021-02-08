describe "Caixa de opções", :dropdown do
    it "item especifico simples" do 
        visit "http://training-wheels-protocol.herokuapp.com/dropdown"
        dropd = find(".avenger-list")
        dropd.find("option", text: "Loki").select_option
        sleep 5
    end
    it "item especifico com o find" do
        visit "http://training-wheels-protocol.herokuapp.com/dropdown"
        drop = find(".avenger-list")
        drop.find("option", text: "Scott Lang").select_option
        sleep 5
    end
    it "qualquer item", :sample do
        visit "http://training-wheels-protocol.herokuapp.com/dropdown"
        drop = find(".avenger-list")
        drop.all("option").sample.select_option
end

end
